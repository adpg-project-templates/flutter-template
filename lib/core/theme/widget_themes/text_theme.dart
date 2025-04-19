import 'package:flutter/material.dart';
import '../../constant/sizes.dart';
import '../../constant/colors.dart';

class AppTextThemes {
  AppTextThemes._();

  static TextTheme _baseTheme() {
    return TextTheme();
  }

  static const FontWeight fontWeightBold = FontWeight.w700;
  static const FontWeight fontWeightSemiBold = FontWeight.w600;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightNormal = FontWeight.w400;

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
    headlineLarge: headL.copyWith(color: AppColors.textPrimary),
    headlineMedium: headM.copyWith(color: AppColors.textPrimary),
    headlineSmall: headS.copyWith(color: AppColors.textPrimary),
    titleLarge: titleL.copyWith(color: AppColors.textPrimary),
    titleMedium: titleM.copyWith(color: AppColors.textPrimary),
    titleSmall: titleS.copyWith(color: AppColors.textPrimary),
    bodyLarge: bodyL.copyWith(color: AppColors.textPrimary),
    bodyMedium: bodyM.copyWith(color: AppColors.textPrimary),
    bodySmall: bodyS.copyWith(color: AppColors.textSecondary),
    labelLarge: label.copyWith(color: AppColors.textPrimary),
    labelMedium: label.copyWith(color: AppColors.textSecondary),
  );

  static final TextTheme darkTheme = _baseTheme().copyWith(
    headlineLarge: headL.copyWith(color: AppColors.white),
    headlineMedium: headM.copyWith(color: AppColors.white),
    headlineSmall: headS.copyWith(color: AppColors.white),
    titleLarge: titleL.copyWith(color: AppColors.white),
    titleMedium: titleM.copyWith(color: AppColors.white),
    titleSmall: titleS.copyWith(color: AppColors.white),
    bodyLarge: bodyL.copyWith(color: AppColors.white),
    bodyMedium: bodyM.copyWith(color: AppColors.white),
    bodySmall: bodyS.copyWith(color: AppColors.textSecondary),
    labelLarge: label.copyWith(color: AppColors.white),
    labelMedium: label.copyWith(color: AppColors.textSecondary),
  );
}
