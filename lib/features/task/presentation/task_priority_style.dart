import 'package:flutter/material.dart';
import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/features/task/domain/task.dart';

/// 우선순위 화면 스타일
extension TaskPriorityStyle on TaskPriority {
  String get label => switch (this) {
    TaskPriority.high => '높음',
    TaskPriority.normal => '보통',
    TaskPriority.low => '낮음',
  };

}