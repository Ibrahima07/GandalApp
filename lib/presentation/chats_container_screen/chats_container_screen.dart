import 'bloc/chats_container_bloc.dart';
import 'models/chats_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_page/chats_page.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_bottom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ChatsContainerScreen extends StatelessWidget {
  ChatsContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatsContainerBloc>(
        create: (context) => ChatsContainerBloc(
            ChatsContainerState(chatsContainerModelObj: ChatsContainerModel()))
          ..add(ChatsContainerInitialEvent()),
        child: ChatsContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChatsContainerBloc, ChatsContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.chatsPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomAppBar(context),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked));
    });
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Fi7941430:
        return "/";
      case BottomBarEnum.Fi10450953:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Fi11954717:
        return AppRoutes.chatsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.chatsPage:
        return ChatsPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
