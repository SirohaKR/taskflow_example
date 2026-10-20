import 'package:flutter/material.dart';
import 'package:taskflow_example/core/theme/app_colors.dart';

/// 공통으로 사용 할 텍스트 스타일
abstract final class AppTextStyles {
  static const String fontFamily = 'Pretendard';
  static const List<String> fontFamilyFallback = [
    fontFamily
  ];
  static const FontWeight taskFlowWeight = FontWeight.w700;
  static const double taskFlowTracking = 1.6;

  // --- Headings / Titles ---
  /// 큰 제목 (28px, Bold 800)
  static const TextStyle h1 = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 28,
    fontWeight: FontWeight.w800,
  );

  /// 주요 섹션 / 화면 제목 / 강조 이름 (23px, Bold 800)
  static const TextStyle h2 = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 23,
    fontWeight: FontWeight.w800,
  );

  /// 카드 제목 / 목록 아이템 타이틀 (19px, Bold 800)
  static const TextStyle h3 = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 19,
    fontWeight: FontWeight.w800,
  );

  /// 소제목 / 버튼 라벨 / 하위 타이틀 (16px, Bold 700)
  static const TextStyle h4 = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  // --- Body ---
  /// 본문 대형 (16px, Regular 400)
  static const TextStyle bodyLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// 본문 기본 (14px, Regular 400)
  static const TextStyle bodyMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  /// 본문 소형 / 보조 설명 (13px, Regular 400)
  static const TextStyle bodySmall = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  // --- Caption & Bedge ---
  /// 캡션 / 상세 안내 (12px, Regular 400)
  static const TextStyle caption = TextStyle(
    color: AppColors.textMuted,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  /// 뱃지 / 인덱스 / 태그 (12px, Regular 400)
  static const TextStyle badge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );

  // --- copyWith ---
  static final TextStyle sectionTitle = h3.copyWith(
    fontSize: 20,
    height: 1.2,
  );

  static final TextStyle dialogTitle = h4.copyWith(
    fontSize: 18,
    height: 21 / 18,
  );

  static final TextStyle appBarTitle = dialogTitle.copyWith(
    fontFamily: fontFamily,
  );

  static final TextStyle bodyLargeMultiline = bodyLarge.copyWith(height: 1.5);
  static final TextStyle bodyLargeCompact = bodyLarge.copyWith(height: 19 / 16);
  static final TextStyle bodyLargeBoldCompact = bodyLargeCompact.copyWith(fontWeight: FontWeight.w700);
  static final TextStyle bodyMediumCompact = bodyMedium.copyWith(height: 17 / 14);
  static final TextStyle bodyMediumSemiBold = bodyMedium.copyWith(fontWeight: FontWeight.w600);
  static final TextStyle bodyMediumSemiBoldCompact = bodyMediumSemiBold.copyWith(height: 17 / 14);
  static final TextStyle badgeBold = badge.copyWith(
    fontWeight: FontWeight.w700,
    height: 14 / 12,
  );
  static final TextStyle button = h4.copyWith(fontFamily:  fontFamily, fontSize: 14, fontWeight: FontWeight.w600);
  static final TextStyle textButton = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle fieldHint = bodyLargeMultiline.copyWith(color: AppColors.textMuted);
  static const TextStyle errorToast = TextStyle(color: AppColors.white);
  static const TextStyle themeHeadlineLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 30,
    height: 1.25,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.8,
  );
  static const TextStyle themeHeadlineMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 24,
    height: 1.3,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  );
  static const TextStyle themeTitleLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 20,
    height: 1.35,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle themeTitleMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 17,
    height: 1.4,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle themeBodyLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    height: 1.5,
  );
  static const TextStyle themeBodyMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    height: 1.5,
  );
}