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
  }) {
    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: prefixIconColor,
      suffixIconColor: suffixIconColor,
      labelStyle: TextStyle(
        fontSize: AppSizes.fontSizeMd,
        color: labelColor,
        fontFamily: 'Urbanist',
      ),
      hintStyle: TextStyle(
        fontSize: AppSizes.fontSizeSm,
        color: hintColor,
        fontFamily: 'Urbanist',
      ),
      errorStyle: TextStyle(
        fontStyle: FontStyle.normal,
        fontFamily: 'Urbanist',
      ),
      floatingLabelStyle: TextStyle(
        color: floatingLabelColor,
        fontFamily: 'Urbanist',
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: focusedBorderColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 1, color: errorBorderColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
        borderSide: BorderSide(width: 2, color: errorBorderColor),
      ),
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
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
  );

  static final InputDecorationTheme darkInputDecorationTheme =
      _baseInputDecorationTheme(
    labelColor: AppColors.white,
    hintColor: AppColors.white,
    floatingLabelColor: AppColors.white.withAlpha(204),
    borderColor: AppColors.darkGrey,
    focusedBorderColor: AppColors.white,
    errorBorderColor: AppColors.error,
    prefixIconColor: AppColors.darkGrey,
    suffixIconColor: AppColors.darkGrey,
  );
}
