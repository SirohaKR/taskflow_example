import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow_example/app/config/app_routes.dart';
import 'package:taskflow_example/features/task/presentation/task_page.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final GoRouter router = GoRouter(
    initialLocation: AppRoutes.task,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.task,
        pageBuilder: (context, routeState) => _withoutTranstition(
          routeState,
          const TaskPage(),
        )
      )
    ]
  );

  return router;
}

NoTransitionPage<void> _withoutTranstition(
 GoRouterState routeState,
 Widget child,
) {
  return NoTransitionPage<void>(key: routeState.pageKey, child: child);
}