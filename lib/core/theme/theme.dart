import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/theme/widget_themes/card_theme.dart';
import '../constant/colors.dart';
import 'widget_themes/appbar_theme.dart';
import 'widget_themes/bottom_sheet_theme.dart';
import 'widget_themes/checkbox_theme.dart';
import 'widget_themes/chip_theme.dart';
import 'widget_themes/elevated_button_theme.dart';
import 'widget_themes/outlined_button_theme.dart';
import 'widget_themes/text_field_theme.dart';
import 'widget_themes/text_theme.dart';

// Credits to: https://www.youtube.com/@CodingwithT
class AppThemes {
  AppThemes._();

  static ThemeData _baseTheme(Brightness brightness) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Manrope',
      brightness: brightness,
      disabledColor: AppColors.grey,
      primaryColor: AppColors.primary,
    );
  }

  static final ThemeData lightTheme = _baseTheme(Brightness.light).copyWith(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTextThemes.lightTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
    cardTheme: AppCardTheme.lightAppBarTheme,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.tertiary,
      surface: AppColors.primaryBackground,
      inverseSurface: AppColors.primaryBackground,
      surfaceContainer: AppColors.secondaryBackground,
    ),
  );

  static final ThemeData darkTheme = _baseTheme(Brightness.dark).copyWith(
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: AppTextThemes.darkTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    cardTheme: AppCardTheme.darkAppBarTheme,
    appBarTheme: AppAppBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.tertiary,
      surface: AppColors.darkBackground,
      inverseSurface: AppColors.primaryBackground,
      surfaceContainer: AppColors.secondaryDarkBackground,
    ),
  );
}
