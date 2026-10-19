import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:taskflow_example/app.dart';

void main() {
  //app.dart
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: TaskFlowApp()));
}
