import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

///할 일 우선순위
enum TaskPriority {high, normal, low}

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String title,
    required DateTime createdAt,
    @Default('') String memo,
    @Default(TaskPriority.normal) TaskPriority priority,
    @Default(false) bool isDone,
  }) = _Task;
}