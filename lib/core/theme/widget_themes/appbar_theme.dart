import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/sizes.dart';

class AppAppBarTheme {
  AppAppBarTheme._();

  static AppBarTheme _baseAppBarTheme({
    required Color backgroundColor,
    required Color surfaceTintColor,
    required Color iconColor,
    required Color actionsIconColor,
    required Color titleColor,
  }) {
    return AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor,
      surfaceTintColor: surfaceTintColor,
      iconTheme: IconThemeData(color: iconColor, size: AppSizes.iconMd),
      actionsIconTheme:
          IconThemeData(color: actionsIconColor, size: AppSizes.iconMd),
      titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: titleColor,
        fontFamily: 'Urbanist',
      ),
    );
  }

  static final AppBarTheme lightAppBarTheme = _baseAppBarTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconColor: AppColors.iconColor,
    actionsIconColor: AppColors.iconColor,
    titleColor: AppColors.black,
  );

  static final AppBarTheme darkAppBarTheme = _baseAppBarTheme(
    backgroundColor: AppColors.darkBackground,
    surfaceTintColor: AppColors.darkBackground,
    iconColor: AppColors.black,
    actionsIconColor: AppColors.white,
    titleColor: AppColors.white,
  );
}
