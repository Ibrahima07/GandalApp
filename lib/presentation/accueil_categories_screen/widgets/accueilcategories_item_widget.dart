import '../models/accueilcategories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AccueilcategoriesItemWidget extends StatelessWidget {
  AccueilcategoriesItemWidget(
    this.accueilcategoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccueilcategoriesItemModel accueilcategoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      width: 121.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 79.v,
            width: 120.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGray50.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL46,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle119,
              height: 63.v,
              width: 96.h,
              radius: BorderRadius.only(
                topLeft: Radius.circular(46.h),
                bottomRight: Radius.circular(46.h),
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            accueilcategoriesItemModelObj.accueil!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
