import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:taskflow_example/core/constants/app_assets.dart';
import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/core/theme/app_text_styles.dart';


/// 홈화면 레이아웃 구성 담당 Page
class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// 변수 설정
    final String formattedDate = DateFormat('yyyy년 MM월 dd일 EEEE', 'ko').format(DateTime.now());

    final int completedTasks = 2;
    final int totalTasks = 3;     // 전체 할 일 (더미로 5까지)

    final double progress = totalTasks == 0 ? 0 : completedTasks / totalTasks;
    final int percent = totalTasks == 0
        ? 0
        : ((completedTasks / totalTasks) * 100).round();

    final String percentText = percent.toString();

    return GestureDetector(
      behavior: HitTestBehavior.opaque, // 빈곳 터치 먹통x
      onTap: () => FocusScope.of(context).unfocus(), // 빈곳 터치했을때 키보드 내리는 기능
      child: Scaffold(
        body: SafeArea(
          // 타이틀
          // 달성률 위젯
          // 검색 및 리스트 위젯
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formattedDate,
                        style: const TextStyle(
                          fontSize: 13,
                          color: AppColors.textPrimary
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'TaskFlow',
                        style: AppTextStyles.h2,
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primarySurface,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: AppTextStyles.textButton,
                    ),
                    child: const Text('지난 기록'),
                  )
                ],
              ),

              const SizedBox(height: 20),

              //오늘의 달성률 카드
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.05),
                      blurRadius: 16,
                      offset: const Offset(0, 6),
                    ),
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(AppAssets.statsChart),
                        const SizedBox(width: 6),
                        Text(
                          '오늘의 달성률',
                          style: AppTextStyles.dialogTitle,
                        ),
                        const Spacer(),
                        Text(
                          '$completedTasks / $totalTasks 완료 ($percentText%)',
                          style: AppTextStyles.dialogTitle.copyWith(
                            color: AppColors.primary
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: progress,
                        minHeight: 8,
                        backgroundColor: AppColors.primarySurface,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),

              //검색창
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: AppColors.border),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: '할 일을 검색해보세요...',
                    prefixIcon: SizedBox(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: SvgPicture.asset(
                          AppAssets.search,
                          width: 16,
                          height: 16,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minHeight: 60,
                      minWidth: 60,
                    ),
                    filled: false,
                    isDense: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // 필터 탭(버튼)
              Row(
                children: [
                  _filterChip('전체 (3)', selected: true),
                  const SizedBox(width: 8),
                  _filterChip('진행 중 (1)'),
                  const SizedBox(width: 8),
                  _filterChip('완료 (2)'),
                ],
              ),

              const SizedBox(height: 16),

              _taskCard(
                title: 'Flutter 아키텍처 문서 정독',
                time: '오전 10:00',
                note: '폴더 구조 정리',
                priority: '높음'
              ),
              const SizedBox(height: 12),

              _taskCard(
                  title: 'Stateless vs Stateful 비교 코딩',
                  time: '오후 01:30',
                  note: 'TaskFlow 화면 구현',
                  priority: '보통'
              ),
              const SizedBox(height: 12),

              _taskCard(
                  title: '헬스장 가서 하체 운동 1시간',
                  time: '오후 07:00',
                  note: '유산소 20분 포함',
                  priority: '낮음'
              ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
          backgroundColor: AppColors.primary,
          child: SvgPicture.asset(AppAssets.plus),
        ),
      ),
    );
  }

  //탭 바 위젯, 나중에 개수 변수 해서 연동되게
  Widget _filterChip(String label, {bool selected = false}) {
    return Container (
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16
      ),
      decoration: BoxDecoration(
        color: selected
            ? AppColors.primary
            : AppColors.inactiveTab,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: AppTextStyles.textButton.copyWith(
          color: selected
              ? AppColors.white
              : AppColors.inactiveText
        ),
      ),
    );
  }

  // 리스트 위젯
  Widget _taskCard({
    required String title,
    required String time,
    required String note,
    required String priority,
    bool completed = false,
  }) {
    final Color priorityColor = switch (priority) {
      '높음' => AppColors.highSurface,
      '보통' => AppColors.normalSurface,
      _ => AppColors.lowSurface
    };

    final Color priorityTextColor = switch (priority) {
      '높음' => AppColors.highText,
      '보통' => AppColors.normalText,
      _ => AppColors.lowText
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.border),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Row(
        children: [
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              color: completed ? AppColors.primary : AppColors.white,
              border: Border.all(
                color: completed ? AppColors.primary : AppColors.controlBorder,
                width: 2
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: completed
              ? Center(
                child: SvgPicture.asset(
                  AppAssets.check,
                  width: 16,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                      AppColors.white,
                      BlendMode.srcIn
                  ),
                ),
              )
              : null,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: completed ? AppColors.cancelText : AppColors.textPrimary,
                    decoration: completed ? TextDecoration.lineThrough : null,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '$time - $note',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.cancelText
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: priorityColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        priority,
                        style: TextStyle(
                          fontSize: 10,
                          color: priorityTextColor,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ),
          SvgPicture.asset(AppAssets.trash)
        ],
      ),
    );
  }
}