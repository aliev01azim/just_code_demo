// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:code_demo/main.dart';
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'package:code_demo/src/modules/auth/presentation/auth_screen.dart';
import '../../../di.dart';
import '../../modules/auth/presentation/screens/login/login_screen.dart';
import '../../modules/auth/presentation/screens/signin/email_screen.dart';
import '../../modules/auth/presentation/screens/signin/password_screen.dart';
import '../../modules/auth/presentation/screens/signin/signin_wrapper.dart';
import '../../modules/home/home_screen.dart';
import '../../modules/home/home_tab/home_tab.dart';
import '../../modules/home/profile_tab/profile_tab.dart';
import '../../modules/home/search_tab/search_tab.dart';
import 'guards/auth_guard.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeModuleRoute.page,
      initial: true,
      guards: [AuthGuard(tokenUseCase: di.tokenUseCase)],
      children: [
        AutoRoute(page: HomeTabRoute.page,initial: true),
        AutoRoute(page: ProfileTabRoute.page),
        AutoRoute(page: SearchTabRoute.page),
      ],
    ),
    AutoRoute(page: AuthModuleRoute.page, children: [
      AutoRoute(page: AuthRoute.page, initial: true),
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: SigninWrapperRoute.page, children: [
        AutoRoute(page: EmailRoute.page, initial: true),
        AutoRoute(page: PasswordRoute.page),
      ]),
    ]),
  ];
}

// final autoRouterDelegate = AutoRouterDelegate.declarative(
//   AppRouter(),
//   routes: (_) => [
//     if (HiveService.isRegistered()) const HomeRoute() else const AuthRoute(),
//   ],
// );
