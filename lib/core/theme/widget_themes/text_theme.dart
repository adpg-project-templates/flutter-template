import 'package:flutter/material.dart';

import '../../constant/sizes.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme _baseTheme() {
    return TextTheme();
  }

  static const FontWeight fontWeightBold = FontWeight.bold;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightNormal = FontWeight.normal;

  static const TextStyle headL = TextStyle(
    fontSize: AppSizes.fontSizeHeadL,
    fontWeight: fontWeightBold,
  );

  static const TextStyle headM = TextStyle(
    fontSize: AppSizes.fontSizeHeadM,
    fontWeight: fontWeightSemiBold,
  );

  static const TextStyle headS = TextStyle(
    fontSize: AppSizes.fontSizeHeadS,
    fontWeight: fontWeightSemiBold,
  );

  static const TextStyle titleL = TextStyle(
    fontSize: AppSizes.fontSizeTitle,
    fontWeight: fontWeightSemiBold,
  );

  static const TextStyle titleM = TextStyle(
    fontSize: AppSizes.fontSizeTitle,
    fontWeight: fontWeightMedium,
  );

  static const TextStyle titleS = TextStyle(
    fontSize: AppSizes.fontSizeTitle,
    fontWeight: fontWeightNormal,
  );

  static const TextStyle bodyL = TextStyle(
    fontSize: AppSizes.fontSizeBody,
    fontWeight: fontWeightMedium,
  );

  static const TextStyle bodyM = TextStyle(
    fontSize: AppSizes.fontSizeBody,
    fontWeight: fontWeightNormal,
  );

  static const TextStyle bodyS = TextStyle(
    fontSize: AppSizes.fontSizeBody,
    fontWeight: fontWeightMedium,
  );

  static const TextStyle label = TextStyle(
    fontSize: AppSizes.fontSizeLabel,
    fontWeight: fontWeightNormal,
  );

  static final TextTheme lightTheme = _baseTheme().copyWith(
    headlineLarge: headL.copyWith(color: Colors.black),
    headlineMedium: headM.copyWith(color: Colors.black),
    headlineSmall: headS.copyWith(color: Colors.black),
    titleLarge: titleL.copyWith(color: Colors.black),
    titleMedium: titleM.copyWith(color: Colors.black),
    titleSmall: titleS.copyWith(color: Colors.black),
    bodyLarge: bodyL.copyWith(color: Colors.black),
    bodyMedium: bodyM.copyWith(color: Colors.black),
    bodySmall: bodyS.copyWith(color: Colors.black.withAlpha(128)),
    labelLarge: label.copyWith(color: Colors.black),
    labelMedium: label.copyWith(color: Colors.black.withAlpha(128)),
  );

  static final TextTheme darkTheme = _baseTheme().copyWith(
    headlineLarge: headL.copyWith(color: Colors.white),
    headlineMedium: headM.copyWith(color: Colors.white),
    headlineSmall: headS.copyWith(color: Colors.white),
    titleLarge: titleL.copyWith(color: Colors.white),
    titleMedium: titleM.copyWith(color: Colors.white),
    titleSmall: titleS.copyWith(color: Colors.white),
    bodyLarge: bodyL.copyWith(color: Colors.white),
    bodyMedium: bodyM.copyWith(color: Colors.white),
    bodySmall: bodyS.copyWith(color: Colors.white.withAlpha(128)),
    labelLarge: label.copyWith(color: Colors.white),
    labelMedium: label.copyWith(color: Colors.white.withAlpha(128)),
  );
}
