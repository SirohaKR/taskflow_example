import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:taskflow_example/app.dart';

void main() async{
  //app.dart
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('ko', '');

  runApp(const ProviderScope(child: TaskFlowApp()));
}
