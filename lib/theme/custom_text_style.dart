import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallIndigo400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigo400,
      );
  static get bodySmallInterPrimaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 10.fSize,
      );
  static get bodySmallOnPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 8.fSize,
      );
  static get bodySmallOnPrimary9 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 9.fSize,
      );
  static get bodySmallOnPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallRed300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red300,
      );
  static get bodySmallRed30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red30001,
      );
  static get bodySmallWhiteA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
      );
  static get bodySmallWhiteA700018 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 8.fSize,
      );
  static get bodySmallYellow900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow900,
      );
  static get bodySmallYellow90003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow90003,
      );
  static get bodySmallYellow90004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow90004,
      );
  static get bodySmallff171a1f => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF171A1F),
      );
  static get bodySmallff565d6d => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF565D6D),
      );
  // Label text style
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeRed30001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red30001,
      );
  static get labelLargeYellow900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.yellow900,
      );
  static get labelLargeff171a1f => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF171A1F),
      );
  static get labelLargeff565d6d => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF565D6D),
      );
  static get labelMediumGray700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w800,
      );
  // Manrope text style
  static get manropeGray700 => TextStyle(
        color: appTheme.gray700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).manrope;
  static get manropeOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).manrope;
  static get manropePrimary => TextStyle(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).manrope;
  // Title text style
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeInterPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallRed30001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red30001,
      );
}

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
