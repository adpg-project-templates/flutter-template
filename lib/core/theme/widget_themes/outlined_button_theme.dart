import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/sizes.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static ButtonStyle _baseStyle({
    required Color foregroundColor,
    required Color borderColor,
    required Color textColor,
  }) {
    return OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: foregroundColor,
      side: BorderSide(color: borderColor),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        color: textColor,
        fontWeight: FontWeight.w600,
        fontFamily: 'Manrope',
      ),
    );
  }

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.textPrimary,
      borderColor: AppColors.borderPrimary,
      textColor: AppColors.textPrimary,
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: _baseStyle(
      foregroundColor: AppColors.white,
      borderColor: AppColors.borderPrimary,
      textColor: AppColors.white,
    ),
  );
}
