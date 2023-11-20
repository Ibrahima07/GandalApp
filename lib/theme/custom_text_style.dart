import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallCentraleSansLightGray90001 =>
      theme.textTheme.bodySmall!.centraleSansLight.copyWith(
        color: appTheme.gray90001,
        fontSize: 8.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallSFProWhiteA700 =>
      theme.textTheme.bodySmall!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.3),
      );
  // Display text style
  static get displayMediumGray90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeSFProLightgreenA40001 =>
      theme.textTheme.headlineLarge!.sFPro.copyWith(
        color: appTheme.lightGreenA40001,
      );
  // Label text style
  static get labelLargeCentraleSansMediumBlack900 =>
      theme.textTheme.labelLarge!.centraleSansMedium.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeCentraleSansMediumLightgreenA40001 =>
      theme.textTheme.labelLarge!.centraleSansMedium.copyWith(
        color: appTheme.lightGreenA40001,
      );
  // Title text style
  static get titleLargeCentraleSansBoldGray900 =>
      theme.textTheme.titleLarge!.centraleSansBold.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeCentraleSansBoldWhiteA700 =>
      theme.textTheme.titleLarge!.centraleSansBold.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeWhiteA700Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );

  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumSFProGray90001 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumSFProWhiteA700 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.whiteA700.withOpacity(0.4),
        fontSize: 17.fSize,
      );
  static get titleMediumSFProWhiteA70017 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleSmallCentraleSansBoldBlack900 =>
      theme.textTheme.titleSmall!.centraleSansBold.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCentraleSansBoldGray90001 =>
      theme.textTheme.titleSmall!.centraleSansBold.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get centraleSansBold {
    return copyWith(
      fontFamily: 'Centrale Sans Bold',
    );
  }

  TextStyle get centraleSansMedium {
    return copyWith(
      fontFamily: 'Centrale Sans Medium',
    );
  }

  TextStyle get centraleSansLight {
    return copyWith(
      fontFamily: 'Centrale Sans Light',
    );
  }

  TextStyle get centraleSansRegular {
    return copyWith(
      fontFamily: 'Centrale Sans Regular',
    );
  }
}