import 'package:flutter/material.dart';

import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/core/theme/app_radli.dart';
import 'package:taskflow_example/core/theme/app_text_styles.dart';
import 'package:taskflow_example/core/theme/app_typography.dart';

//앱 공통 테마 구성
abstract final class AppTheme {
  static ThemeData get light {
    final colorScheme =
      ColorScheme.fromSeed(
          seedColor: AppColors.primary
      ).copyWith(
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        surface: AppColors.primarySurface,
        error: AppColors.danger,
      );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.transparent,
      fontFamily: AppTextStyles.fontFamily,
      fontFamilyFallback: AppTextStyles.fontFamilyFallback,
      textTheme: AppTypography.textTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        toolbarHeight: 54,
        backgroundColor: AppColors.primarySurface,
        foregroundColor: AppColors.textPrimary,
        surfaceTintColor: AppColors.transparent,
        shape: const Border(bottom: BorderSide(color: AppColors.border)),
        titleTextStyle: AppTextStyles.appBarTitle,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.primarySurface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppRadli.card,
          side: BorderSide(color: AppColors.border),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.fieldBorder,
        hintStyle: AppTextStyles.fieldHint,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        border: const OutlineInputBorder(
          borderRadius: AppRadli.input,
          borderSide: BorderSide(color: AppColors.fieldBorder),
        ),
      )
    );
  }
}
