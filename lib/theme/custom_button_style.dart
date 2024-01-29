import 'dart:ui';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              15.h,
            ),
          ),
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL15 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL151 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(
              15.h,
            ),
          ),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL17 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL18 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL41 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL42 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL43 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL6 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL61 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  static ButtonStyle get outlinePrimaryTL62 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.orange50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 0,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
