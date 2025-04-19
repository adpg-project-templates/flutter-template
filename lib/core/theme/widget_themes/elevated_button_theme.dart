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
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        color: AppColors.textWhite,
        fontWeight: fontWeight,
        fontFamily: 'Manrope',
      ),
    );
  }

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.buttonDisabled,
      fontWeight: FontWeight.w600,
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.darkerGrey,
      fontWeight: FontWeight.w600,
    ),
  );
}
