import 'package:flutter/material.dart';
import 'package:taskflow_example/core/theme/app_text_styles.dart';

/// 앱 공통 타이포그래피 구성
abstract final class AppTypography {
  static const TextTheme textTheme = TextTheme(
    headlineLarge: AppTextStyles.themeHeadlineLarge,
    headlineMedium: AppTextStyles.themeHeadlineMedium,
    titleLarge: AppTextStyles.themeTitleLarge,
    titleMedium: AppTextStyles.themeTitleMedium,
    bodyLarge: AppTextStyles.themeBodyLarge,
    bodyMedium: AppTextStyles.themeBodyMedium,
  );
}