import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90001,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGrayB => BoxDecoration(
        color: appTheme.gray200B2,
      );
  static BoxDecoration get fillLightGreenA => BoxDecoration(
        color: appTheme.lightGreenA400,
      );
  static BoxDecoration get fillLightgreenA40001 => BoxDecoration(
        color: appTheme.lightGreenA40001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.21),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.19),
      );
  static BoxDecoration get fillWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder33 => BorderRadius.circular(
        33.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL200 => BorderRadius.only(
        topLeft: Radius.circular(200.h),
        bottomRight: Radius.circular(200.h),
      );
  static BorderRadius get customBorderTL46 => BorderRadius.only(
        topLeft: Radius.circular(46.h),
        bottomRight: Radius.circular(46.h),
      );
  static BorderRadius get customBorderTL59 => BorderRadius.only(
        topLeft: Radius.circular(59.h),
        bottomRight: Radius.circular(59.h),
      );
  static BorderRadius get customBorderTL90 => BorderRadius.only(
        topLeft: Radius.circular(90.h),
        bottomRight: Radius.circular(90.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get roundedBorder55 => BorderRadius.circular(
        55.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder67 => BorderRadius.circular(
        67.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
