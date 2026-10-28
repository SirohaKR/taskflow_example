import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskflow_example/core/theme/app_text_styles.dart';
import 'package:taskflow_example/core/theme/app_radli.dart';
import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/core/theme/app_typography.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //날짜
    final String formattedDate = DateFormat('yyyy년 MM월 dd일 EEEE', 'ko').format(DateTime.now());

    ///헤더 구성 및 위젯 연결하기...
    // TODO: implement build
    throw UnimplementedError();
  }

}