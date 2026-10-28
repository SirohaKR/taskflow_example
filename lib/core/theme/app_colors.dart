import 'package:flutter/material.dart';

/// 앱에서 사용하는 공동 색상
abstract final class AppColors {
  static const Color primary = Color(0xFF4F46E5);
  static const Color primarySurface = Color(0xFFEEF2FF );
  static const Color transparent = Color(0x00000000);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color border = Color(0xFFEDF2F7);
  static const Color fieldBorder = Color(0xFFE0E7FF);
  static const Color controlBorder = Color(0xFFCBD5E1);
  static const Color danger = Color(0xFFD92D20);
  static const Color outerBackground = Color(0xFFF5F5F4);
  static const Color background = Color(0xFFFAFAF9);
  static const Color frameShadow = Color(0x00000000);

  /// 비활성화 상태 탭 색상
  static const Color inactiveTab = Color(0xFFE2E8F0);
  static const Color inactiveText = Color(0xFF475569);

  /// 글씨 색상
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF334155);
  static const Color textMuted = Color(0xFF64748B);
  static const Color cancelText = Color(0xFF94A3B8);

  /// 우선순위 색상
  static const Color highSurface = Color(0xFFFEE2E2);
  static const Color highText = Color(0xFFDC2626);
  static const Color normalSurface = Color(0xFFFEF3C7);
  static const Color normalText = Color(0xFFD97706);
  static const Color lowSurface = Color(0xFFD1FAE5);
  static const Color lowText = Color(0xFF059669);
}