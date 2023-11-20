import '../models/accueilcategories1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Accueilcategories1ItemWidget extends StatelessWidget {
  Accueilcategories1ItemWidget(
    this.accueilcategories1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Accueilcategories1ItemModel accueilcategories1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 99.adaptSize,
        width: 99.adaptSize,
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 17.v,
        ),
        decoration: AppDecoration.fillGray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: CustomImageView(
          imagePath: accueilcategories1ItemModelObj?.corn,
          height: 60.adaptSize,
          width: 60.adaptSize,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
