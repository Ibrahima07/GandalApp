import '../accueil_categories_screen/widgets/accueilcategories1_item_widget.dart';
import '../accueil_categories_screen/widgets/accueilcategories_item_widget.dart';
import 'bloc/accueil_categories_bloc.dart';
import 'models/accueil_categories_model.dart';
import 'models/accueilcategories1_item_model.dart';
import 'models/accueilcategories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_page/chats_page.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_bottom_app_bar.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_text_form_field.dart';

class AccueilCategoriesScreen extends StatelessWidget {
  AccueilCategoriesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AccueilCategoriesBloc>(
      create: (context) => AccueilCategoriesBloc(AccueilCategoriesState(
        accueilCategoriesModelObj: AccueilCategoriesModel(),
      ))
        ..add(AccueilCategoriesInitialEvent()),
      child: AccueilCategoriesScreen(),
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
              _buildFourteen(context),
              SizedBox(height: 23.v),
              _buildAccueilCategories(context),
              _buildSixtyFour(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 47.h),
                child: Text(
                  "lbl_cat_gories".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 111.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 449.v,
                  width: 358.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildAccueilCategories1(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgFloatingIcon,
                        height: 73.adaptSize,
                        width: 73.adaptSize,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(bottom: 121.v),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
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
            child: BlocSelector<AccueilCategoriesBloc, AccueilCategoriesState,
                TextEditingController?>(
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
  Widget _buildAccueilCategories(BuildContext context) {
    return SizedBox(
      height: 106.v,
      child: BlocSelector<AccueilCategoriesBloc, AccueilCategoriesState,
          AccueilCategoriesModel?>(
        selector: (state) => state.accueilCategoriesModelObj,
        builder: (context, accueilCategoriesModelObj) {
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
                width: 10.h,
              );
            },
            itemCount:
                accueilCategoriesModelObj?.accueilcategoriesItemList.length ??
                    0,
            itemBuilder: (context, index) {
              AccueilcategoriesItemModel model =
                  accueilCategoriesModelObj?.accueilcategoriesItemList[index] ??
                      AccueilcategoriesItemModel();
              return AccueilcategoriesItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
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
  Widget _buildAccueilCategories1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<AccueilCategoriesBloc, AccueilCategoriesState,
          AccueilCategoriesModel?>(
        selector: (state) => state.accueilCategoriesModelObj,
        builder: (context, accueilCategoriesModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 100.v,
              crossAxisCount: 3,
              mainAxisSpacing: 23.h,
              crossAxisSpacing: 23.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount:
                accueilCategoriesModelObj?.accueilcategories1ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Accueilcategories1ItemModel model = accueilCategoriesModelObj
                      ?.accueilcategories1ItemList[index] ??
                  Accueilcategories1ItemModel();
              return Accueilcategories1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
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
