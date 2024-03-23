// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthModuleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthModuleScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    EmailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmailScreen(),
      );
    },
    HomeModuleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeModuleScreen(),
      );
    },
    HomeTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeTabScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    PasswordRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PasswordScreen(
          args.email,
          key: args.key,
        ),
      );
    },
    ProfileTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabScreen(),
      );
    },
    SearchTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchTabScreen(),
      );
    },
    SigninWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SigninWrapperScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthModuleScreen]
class AuthModuleRoute extends PageRouteInfo<void> {
  const AuthModuleRoute({List<PageRouteInfo>? children})
      : super(
          AuthModuleRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthModuleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmailScreen]
class EmailRoute extends PageRouteInfo<void> {
  const EmailRoute({List<PageRouteInfo>? children})
      : super(
          EmailRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeModuleScreen]
class HomeModuleRoute extends PageRouteInfo<void> {
  const HomeModuleRoute({List<PageRouteInfo>? children})
      : super(
          HomeModuleRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeModuleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeTabScreen]
class HomeTabRoute extends PageRouteInfo<void> {
  const HomeTabRoute({List<PageRouteInfo>? children})
      : super(
          HomeTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PasswordScreen]
class PasswordRoute extends PageRouteInfo<PasswordRouteArgs> {
  PasswordRoute({
    required String email,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PasswordRoute.name,
          args: PasswordRouteArgs(
            email: email,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PasswordRoute';

  static const PageInfo<PasswordRouteArgs> page =
      PageInfo<PasswordRouteArgs>(name);
}

class PasswordRouteArgs {
  const PasswordRouteArgs({
    required this.email,
    this.key,
  });

  final String email;

  final Key? key;

  @override
  String toString() {
    return 'PasswordRouteArgs{email: $email, key: $key}';
  }
}

/// generated route for
/// [ProfileTabScreen]
class ProfileTabRoute extends PageRouteInfo<void> {
  const ProfileTabRoute({List<PageRouteInfo>? children})
      : super(
          ProfileTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchTabScreen]
class SearchTabRoute extends PageRouteInfo<void> {
  const SearchTabRoute({List<PageRouteInfo>? children})
      : super(
          SearchTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SigninWrapperScreen]
class SigninWrapperRoute extends PageRouteInfo<void> {
  const SigninWrapperRoute({List<PageRouteInfo>? children})
      : super(
          SigninWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
