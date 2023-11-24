import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

class AppTheme {
  static ThemeData mode = ThemeData(
    scaffoldBackgroundColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusColor: AppColors.onPrimary,
      fillColor: AppColors.primary,
      filled: true,
      hintStyle: AppStyles.title,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.onPrimary,
        ),
      ),
      errorStyle: AppStyles.title,
    ),
  );
}
