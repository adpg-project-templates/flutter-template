import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/constant/sizes.dart';
import '../../constant/colors.dart';

class AppCardTheme {
  AppCardTheme._();

  static CardTheme _baseCardTheme({
    required Color backgroundColor,
    required Color surfaceTintColor,
    required Color iconColor,
    required Color actionsIconColor,
    required Color titleColor,
  }) {
    return CardTheme(
      elevation: 0,
      color: backgroundColor.withAlpha(220),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(AppSizes.cardRadiusMd))),
    );
  }

  static final CardTheme lightAppBarTheme = _baseCardTheme(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    iconColor: AppColors.iconColor,
    actionsIconColor: AppColors.iconColor,
    titleColor: AppColors.black,
  );

  static final CardTheme darkAppBarTheme = _baseCardTheme(
    backgroundColor: AppColors.darkBackground,
    surfaceTintColor: AppColors.darkBackground,
    iconColor: AppColors.black,
    actionsIconColor: AppColors.white,
    titleColor: AppColors.white,
  );
}
