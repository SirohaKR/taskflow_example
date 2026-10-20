import 'package:flutter/material.dart';

/// 앱 공통 모서리 반경 정의 상수 모음
abstract final class AppRadli {
  static const BorderRadius control = BorderRadius.all(Radius.circular(10));
  static const BorderRadius input = BorderRadius.all(Radius.circular(10));
  static const BorderRadius card = BorderRadius.all(Radius.circular(10));
  static const BorderRadius panel = BorderRadius.all(Radius.circular(10));
  static const BorderRadius pill = BorderRadius.all(Radius.circular(999));
  static const BorderRadius checkbox = BorderRadius.all(Radius.circular(6));
}