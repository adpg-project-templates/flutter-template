import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData _baseChipTheme({
    required Color checkmarkColor,
    required Color selectedColor,
    required Color disabledColor,
    required Color labelColor,
  }) {
    return ChipThemeData(
      checkmarkColor: checkmarkColor,
      selectedColor: selectedColor,
      disabledColor: disabledColor,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
      labelStyle: TextStyle(color: labelColor, fontFamily: 'Urbanist'),
    );
  }

  static final ChipThemeData lightChipTheme = _baseChipTheme(
    checkmarkColor: AppColors.white,
    selectedColor: AppColors.primary,
    disabledColor: AppColors.grey.withAlpha(102),
    labelColor: AppColors.black,
  );

  static final ChipThemeData darkChipTheme = _baseChipTheme(
    checkmarkColor: AppColors.white,
    selectedColor: AppColors.primary,
    disabledColor: AppColors.darkerGrey,
    labelColor: AppColors.white,
  );
}
