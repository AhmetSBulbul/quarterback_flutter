import 'package:flutter/material.dart';
import 'package:quarterback_flutter/core/theme/app_colors.dart';

abstract final class AppTheme {
  static final theme = ThemeData(
      colorScheme: const ColorScheme(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.grey,
        background: AppColors.black,
        error: Colors.red,
        onPrimary: AppColors.white,
        onSecondary: AppColors.white,
        onSurface: AppColors.lightGrey,
        onBackground: AppColors.white,
        onError: AppColors.white,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: AppColors.black,
      brightness: Brightness.dark,
      fontFamily: 'Mulish',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w800,
        ),
        displayMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
        ),
        displaySmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        headlineLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w800,
        ),
        headlineMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      useMaterial3: true,
      // ElevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          minimumSize: const Size(54, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 24,
          ),
        ),
      ));
}
