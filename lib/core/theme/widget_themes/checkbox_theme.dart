import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/sizes.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._();

  static CheckboxThemeData _baseCheckboxTheme({
    required Color selectedCheckColor,
    required Color unselectedCheckColor,
    required Color selectedFillColor,
    required Color unselectedFillColor,
  }) {
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.xs),
      ),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return selectedCheckColor;
        } else {
          return unselectedCheckColor;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return selectedFillColor;
        } else {
          return unselectedFillColor;
        }
      }),
    );
  }

  static final CheckboxThemeData lightCheckboxTheme = _baseCheckboxTheme(
    selectedCheckColor: AppColors.white,
    unselectedCheckColor: AppColors.black,
    selectedFillColor: AppColors.primary,
    unselectedFillColor: Colors.transparent,
  );

  static final CheckboxThemeData darkCheckboxTheme = _baseCheckboxTheme(
    selectedCheckColor: AppColors.white,
    unselectedCheckColor: AppColors.black,
    selectedFillColor: AppColors.primary,
    unselectedFillColor: Colors.transparent,
  );
}
