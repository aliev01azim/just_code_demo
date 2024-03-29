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
    AppWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppWrapperScreen(),
      );
    },
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
    BottomNavBarRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavBarScreen(),
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
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
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
    ProfileModuleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileModuleScreen(),
      );
    },
    SearchModuleRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchModuleScreen(),
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
/// [AppWrapperScreen]
class AppWrapperRoute extends PageRouteInfo<void> {
  const AppWrapperRoute({List<PageRouteInfo>? children})
      : super(
          AppWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [BottomNavBarScreen]
class BottomNavBarRoute extends PageRouteInfo<void> {
  const BottomNavBarRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavBarRoute';

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
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

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
/// [ProfileModuleScreen]
class ProfileModuleRoute extends PageRouteInfo<void> {
  const ProfileModuleRoute({List<PageRouteInfo>? children})
      : super(
          ProfileModuleRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileModuleRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchModuleScreen]
class SearchModuleRoute extends PageRouteInfo<void> {
  const SearchModuleRoute({List<PageRouteInfo>? children})
      : super(
          SearchModuleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchModuleRoute';

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
