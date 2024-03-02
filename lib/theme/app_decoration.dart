import 'package:flutter/material.dart';
import 'package:wallet_wise/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green400,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime90001.withOpacity(0.65),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow800,
      );
  static BoxDecoration get fillYellow800 => BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.57),
      );
  static BoxDecoration get fillYellow8001 => BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.37),
      );
  static BoxDecoration get fillYellow8002 => BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.3),
      );
  static BoxDecoration get fillYellow8003 => BoxDecoration(
        color: appTheme.yellow800.withOpacity(0.8),
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray700,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(-0.1, 0),
          end: Alignment(1.08, 1),
          colors: [
            appTheme.gray300,
            appTheme.gray100Cc,
            appTheme.gray500,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToLime => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.lime900,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToLime900 => BoxDecoration(
        color: appTheme.whiteA700,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.lime900,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.yellow800,
            appTheme.black90001,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.95, 0),
          end: Alignment(0.1, 1.02),
          colors: [
            appTheme.yellow800,
            theme.colorScheme.primary,
            appTheme.cyan800,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.yellow800,
            appTheme.gray900,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToLightGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.yellow800,
            appTheme.lightGreen900,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToOnErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.yellow800,
            theme.colorScheme.onErrorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientYellowToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.yellow800,
            theme.colorScheme.primary.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              24.48,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get outlineGray10001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray100011 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray100012 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.gray10001,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get circleBorder31 => BorderRadius.circular(
        31.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL24 => BorderRadius.vertical(
        top: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
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
    