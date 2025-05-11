import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:health/presentation/AI/AI.dart';
import 'package:health/presentation/forget/forget_password.dart';
import 'package:health/presentation/information/information_screen.dart';
import 'package:health/presentation/login/Login_screen.dart';
import 'package:health/presentation/nav_bar/nav_bar_screen.dart';
import 'package:health/presentation/notification/noti_screen.dart';
import 'package:health/presentation/policy/policy_screen.dart';
import 'package:health/presentation/process/past_process.dart';
import 'package:health/presentation/profile/profile_screen.dart';
import 'package:health/presentation/register/register_screen.dart';
import 'package:health/presentation/start/start.dart';
import 'package:health/routes/app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.start,
    routes: [
      GoRoute(path: AppRoutes.notification, builder: (context, state) => const NotiScreen()),
      GoRoute(path: AppRoutes.login, builder: (context, state) => const LoginScreen()),
      GoRoute(path: AppRoutes.register, builder: (context, state) => const Register()),
      GoRoute(
        path: AppRoutes.forgotPassword,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(path: AppRoutes.policy, builder: (context, state) => const PolicyScreen()),
      GoRoute(path: AppRoutes.start, builder: (context, state) => const StartScreen()),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => NavBarScreen(navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: AppRoutes.profile, builder: (context, state) => const ProfileScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: AppRoutes.ai, builder: (context, state) => const AIScreen())],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.pastProcess,
                builder: (context, state) => const PastProcess(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.information,
                builder: (context, state) => const InformationScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
