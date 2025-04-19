import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/sizes.dart';

class AppTextFormFieldTheme {
  AppTextFormFieldTheme._();

  static InputDecorationTheme _baseInputDecorationTheme({
    required Color labelColor,
    required Color hintColor,
    required Color floatingLabelColor,
    required Color borderColor,
    required Color focusedBorderColor,
    required Color errorBorderColor,
    required Color prefixIconColor,
    required Color suffixIconColor,
    required Color fillColor,
  }) {
    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: prefixIconColor,
      suffixIconColor: suffixIconColor,
      labelStyle: TextStyle(
        fontSize: AppSizes.fontSizeMd,
        color: labelColor,
        fontFamily: 'Manrope',
      ),
      hintStyle: TextStyle(
        fontSize: AppSizes.fontSizeSm,
        color: hintColor,
        fontFamily: 'Manrope',
      ),
      errorStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: 'Manrope',
      ),
      floatingLabelStyle: TextStyle(
        color: floatingLabelColor,
        fontFamily: 'Manrope',
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: errorBorderColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 2, color: errorBorderColor),
      ),
      filled: true,
      fillColor: fillColor,
      floatingLabelBehavior: FloatingLabelBehavior.never,
    );
  }

  static final InputDecorationTheme lightInputDecorationTheme =
      _baseInputDecorationTheme(
    labelColor: AppColors.textPrimary,
    hintColor: AppColors.textSecondary,
    floatingLabelColor: AppColors.textSecondary,
    borderColor: AppColors.borderPrimary,
    focusedBorderColor: AppColors.borderSecondary,
    errorBorderColor: AppColors.error,
    prefixIconColor: AppColors.iconColor,
    suffixIconColor: AppColors.iconColor,
    fillColor: AppColors.inputBackground
  );

  static final InputDecorationTheme darkInputDecorationTheme =
      _baseInputDecorationTheme(
    labelColor: AppColors.white,
    hintColor: AppColors.textSecondary,
    floatingLabelColor: AppColors.textSecondary,
    borderColor: AppColors.darkGrey,
    focusedBorderColor: AppColors.white,
    errorBorderColor: AppColors.error,
    prefixIconColor: AppColors.iconColor,
    suffixIconColor: AppColors.iconColor,
    fillColor: AppColors.darkBackground
  );
}
