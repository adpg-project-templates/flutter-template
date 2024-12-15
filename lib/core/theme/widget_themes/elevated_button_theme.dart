import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static ButtonStyle _baseStyle({
    required Color foregroundColor,
    required Color backgroundColor,
    required Color disabledForegroundColor,
    required Color disabledBackgroundColor,
    required FontWeight fontWeight,
  }) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledBackgroundColor: disabledBackgroundColor,
      side: const BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: fontWeight,
        fontFamily: 'Urbanist',
      ),
    );
  }

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.buttonDisabled,
      fontWeight: FontWeight.w500,
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.darkerGrey,
      fontWeight: FontWeight.w600,
    ),
  );
}
