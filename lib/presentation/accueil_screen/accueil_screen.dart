import '../accueil_screen/widgets/accueillist_item_widget.dart';
import 'bloc/accueil_bloc.dart';
import 'models/accueil_model.dart';
import 'models/accueillist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_page/chats_page.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_bottom_app_bar.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_text_form_field.dart';

class AccueilScreen extends StatelessWidget {
  AccueilScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AccueilBloc>(
      create: (context) => AccueilBloc(AccueilState(
        accueilModelObj: AccueilModel(),
      ))
        ..add(AccueilInitialEvent()),
      child: AccueilScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildForty(context),
              SizedBox(height: 23.v),
              _buildAccueilList(context),
              _buildEightyFive(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 47.h),
                child: Text(
                  "lbl_promotion".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 5.v),
              _buildEightyFour(context),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(left: 47.h),
                child: Text(
                  "msg_grossistes_vedettes".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 2.v),
              Container(
                height: 117.v,
                width: 114.h,
                margin: EdgeInsets.only(left: 46.h),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 109.v,
                        width: 114.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius: BorderRadius.circular(
                            21.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVerified,
                      height: 26.adaptSize,
                      width: 26.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(right: 2.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildFiftyOne(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildForty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillGray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 58.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "lbl_accueil".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child:
                BlocSelector<AccueilBloc, AccueilState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomTextFormField(
                  controller: searchController,
                  hintText: "lbl_recherche".tr,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 14.v, 9.h, 13.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 14.v,
                      width: 13.h,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 42.v,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAccueilList(BuildContext context) {
    return SizedBox(
      height: 106.v,
      child: BlocSelector<AccueilBloc, AccueilState, AccueilModel?>(
        selector: (state) => state.accueilModelObj,
        builder: (context, accueilModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 40.h,
              right: 100.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 11.h,
              );
            },
            itemCount: accueilModelObj?.accueillistItemList.length ?? 0,
            itemBuilder: (context, index) {
              AccueillistItemModel model =
                  accueilModelObj?.accueillistItemList[index] ??
                      AccueillistItemModel();
              return AccueillistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 73.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_accueil".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Text(
              "lbl_agro".tr,
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_levage".tr,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyFour(BuildContext context) {
    return SizedBox(
      height: 152.v,
      width: 371.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 47.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.fillLightGreenA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL90,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_protera".tr,
                    style: CustomTextStyles.titleLargeCentraleSansBoldGray900,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 182.h,
                    child: Text(
                      "msg_pr_mier_aliment".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray90001,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "msg_enrichi_la_prot_ine".tr,
                    style: CustomTextStyles.titleSmallCentraleSansBoldGray90001,
                  ),
                  SizedBox(height: 6.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgProtera21,
            height: 137.v,
            width: 77.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 17.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
