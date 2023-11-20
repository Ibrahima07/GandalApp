import '../models/accueillist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AccueillistItemWidget extends StatelessWidget {
  AccueillistItemWidget(
    this.accueillistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccueillistItemModel accueillistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 121.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Container(
              height: 79.v,
              width: 120.h,
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
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
              accueillistItemModelObj.accueil!,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
