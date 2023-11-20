import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "splashScreen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashscreenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "splashScreenone".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashscreenoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "splashScreentow".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashscreentowScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "splashScreentree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.splashscreentreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "connexion_page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.connexionPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "verification_numero".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.verificationNumeroScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "info_du_profil".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.infoDuProfilScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "abonnement".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.abonnementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chats - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chatsContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "chat".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.chatScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "accueil".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.accueilScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "accueil_categories".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.accueilCategoriesScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
