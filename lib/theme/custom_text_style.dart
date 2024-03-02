import 'package:flutter/material.dart';
import 'package:wallet_wise/core/utils/size_utils.dart';
import 'package:wallet_wise/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeDMSansBlack90001 =>
      theme.textTheme.bodyLarge!.dMSans.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get bodyLargeNotoSansBlack90001 =>
      theme.textTheme.bodyLarge!.notoSans.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeNunitoSansPrimary =>
      theme.textTheme.bodyLarge!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeOpenSansYellow800 =>
      theme.textTheme.bodyLarge!.openSans.copyWith(
        color: appTheme.yellow800,
      );
  static get bodyLargePoppinsYellow800 =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: appTheme.yellow800,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumIBMPlexMonoWhiteA700 =>
      theme.textTheme.bodyMedium!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumNotoSansBlack90001 =>
      theme.textTheme.bodyMedium!.notoSans.copyWith(
        color: appTheme.black90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumNotoSansWhiteA700 =>
      theme.textTheme.bodyMedium!.notoSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumNunitoSansGray50001 =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: appTheme.gray50001,
        fontSize: 15.fSize,
      );
  static get bodyMediumNunitoSansPrimary =>
      theme.textTheme.bodyMedium!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumRed500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red500,
        fontSize: 14.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumYellow800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow800.withOpacity(0.57),
        fontSize: 14.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallIBMPlexMonoWhiteA700 =>
      theme.textTheme.bodySmall!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  static get bodySmallInterBluegray40001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayLargeBlack900 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.black900,
      );
  static get displayLargeGray50 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get displayLargeGreen400 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w700,
      );
  static get displayLargeGreen800 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.green800,
      );
  static get displayLargeRedA200 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.redA200,
        fontWeight: FontWeight.w700,
      );
  static get displayLargeRedA700 => theme.textTheme.displayLarge!.copyWith(
        color: appTheme.redA700,
      );
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w300,
      );
  static get displayMediumffe9ab17 => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFE9AB17),
        fontSize: 50.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displayMediumffffffff => theme.textTheme.displayMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 50.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallErrorContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w500,
      );
  static get displaySmallGray90002 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w500,
      );
  static get displaySmallRedA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.redA700,
        fontSize: 36.fSize,
        fontWeight: FontWeight.w500,
      );
  static get displaySmallffe9ab17 => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFE9AB17),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallffffffff => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeInter =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInterBlack90001 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInterBold =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInterYellow800 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInterffff5c5c =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: Color(0XFFFF5C5C),
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeInterffffffff =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumWhiteA700 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 26.fSize,
      );
  static get headlineMediumYellow800 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.yellow800,
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallGray90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineSmallGreen800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.green800,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallNotoSansJavaneseWhiteA700 =>
      theme.textTheme.headlineSmall!.notoSansJavanese.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallRed500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.red500,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallRedA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallTeal500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.teal500,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallWhiteA700ExtraLight =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w200,
      );
  static get headlineSmallWhiteA700_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.61),
      );
  static get headlineSmallWhiteA700_2 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallYellow800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallYellow800ExtraBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w800,
      );
  // Label text style
  static get labelLargeGray90003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90003,
      );
  static get labelLargeIBMPlexMonoWhiteA700 =>
      theme.textTheme.labelLarge!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeIBMPlexMonoWhiteA700Bold =>
      theme.textTheme.labelLarge!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeIBMPlexMonoWhiteA700SemiBold =>
      theme.textTheme.labelLarge!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeLime90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lime90001,
      );
  static get labelLargeNunitoSansWhiteA700 =>
      theme.textTheme.labelLarge!.nunitoSans.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumIBMPlexMonoWhiteA700 =>
      theme.textTheme.labelMedium!.iBMPlexMono.copyWith(
        color: appTheme.whiteA700,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumYellow800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.yellow800,
      );
  // Title text style
  static get titleLargeDMSansYellow800 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargePoppinsGray90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack9000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumGray50SemiBold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50SemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50.withOpacity(0.58),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumGray90002SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGreen600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGreen800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green800,
      );
  static get titleMediumLime90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lime90001.withOpacity(0.65),
      );
  static get titleMediumNotoSansAmber600 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.amber600,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNotoSansBlack90001 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumNotoSansPrimary =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumNotoSansWhiteA700 =>
      theme.textTheme.titleMedium!.notoSans.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimarySemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumRed500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA70018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
        fontSize: 18.fSize,
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTeal500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.teal500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow800SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow800SemiBold18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800.withOpacity(0.58),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallLightgreen90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen90001,
      );
  static get titleSmallNotoSansYellow800 =>
      theme.textTheme.titleSmall!.notoSans.copyWith(
        color: appTheme.yellow800,
      );
  static get titleSmallNotoSansYellow800SemiBold =>
      theme.textTheme.titleSmall!.notoSans.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallNunitoSansPrimary =>
      theme.textTheme.titleSmall!.nunitoSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPoppinsWhiteA700 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallYellow800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow800,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallYellow800_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow800,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get iBMPlexMono {
    return copyWith(
      fontFamily: 'IBM Plex Mono',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get notoSansJavanese {
    return copyWith(
      fontFamily: 'Noto Sans Javanese',
    );
  }
}
