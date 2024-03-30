// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import '../../../di.dart';
import '../../app_wrapper.dart';
import '../../modules/auth/domain/usecases/auth_usecase.dart';
import '../../modules/auth/presentation/auth_screen.dart';
import '../../modules/auth/presentation/screens/login/login_screen.dart';
import '../../modules/auth/presentation/screens/signin/email_screen.dart';
import '../../modules/auth/presentation/screens/signin/password_screen.dart';
import '../../modules/auth/presentation/screens/signin/signin_wrapper.dart';
import '../../modules/bottom_nav_bar/presentation/screens/bottom_nav_bar.dart';
import '../../modules/home/presentation/screens/home_screen.dart';
import '../../modules/profile/profile.dart';
import '../../modules/search/search.dart';
import 'guards/auth_guard.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: AppWrapperRoute.page, initial: true, children: [
      AutoRoute(
        page: BottomNavBarRoute.page,
        initial: true,
        guards: [AuthGuard(tokenUseCase: di.tokenUseCase)],
        children: [
          AutoRoute(page: HomeModuleRoute.page, initial: true, children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
          ]),
          AutoRoute(page: ProfileModuleRoute.page),
          AutoRoute(page: SearchModuleRoute.page),
        ],
      ),
      AutoRoute(page: AuthModuleRoute.page, children: [
        AutoRoute(
          page: AuthRoute.page,
          initial: true,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SigninWrapperRoute.page, children: [
          AutoRoute(
            page: EmailRoute.page,
            initial: true,
          ),
          AutoRoute(page: PasswordRoute.page),
        ]),
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
