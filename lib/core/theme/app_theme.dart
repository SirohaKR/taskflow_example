import 'package:flutter/material.dart';

import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/core/theme/app_text_style.dart';

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
      fontFamily: AppTextStyle.fontFamily,
      fontFamilyFallback: AppTextStyle.fontFamilyFallback,
      textTheme:
    );
  }
}
