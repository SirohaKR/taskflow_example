import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow_example/app/config/app_router.dart';
import 'package:taskflow_example/core/theme/app_colors.dart';
import 'package:taskflow_example/core/theme/app_theme.dart';

/// 앱 테마 설정 / 라우팅 구성
class TaskFlowApp extends ConsumerWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'TaskFlow',
      theme: AppTheme.light,
      routerConfig: router,
      builder: (context, child) {
        return _AppFrame(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

/// 공통 앱 위젯
class _AppFrame extends StatelessWidget {
  const _AppFrame({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.outerBackground,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 820),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.background,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.frameShadow,
                  blurRadius: 24,
                  spreadRadius: 2,
                ),
              ]
            ),
            child: MediaQuery.withNoTextScaling(child: child,),
          ),
        ),
      ),
    );
  }
}