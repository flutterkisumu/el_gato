// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/auth/create_account_page.dart' as _i3;
import '../ui/auth/login_page.dart' as _i2;
import '../ui/main_home/main_home_page.dart' as _i4;
import '../ui/splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.LoginPage(key: args.key),
      );
    },
    CreateAccountRoute.name: (routeData) {
      final args = routeData.argsAs<CreateAccountRouteArgs>(
          orElse: () => const CreateAccountRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CreateAccountPage(key: args.key),
      );
    },
    MainHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MainHomeRouteArgs>(
          orElse: () => const MainHomeRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.MainHomePage(key: args.key),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i5.RouteConfig(
          CreateAccountRoute.name,
          path: '/create-account-page',
        ),
        _i5.RouteConfig(
          MainHomeRoute.name,
          path: '/main-home-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i6.Key? key})
      : super(
          LoginRoute.name,
          path: '/login-page',
          args: LoginRouteArgs(key: key),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CreateAccountPage]
class CreateAccountRoute extends _i5.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i6.Key? key})
      : super(
          CreateAccountRoute.name,
          path: '/create-account-page',
          args: CreateAccountRouteArgs(key: key),
        );

  static const String name = 'CreateAccountRoute';
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.MainHomePage]
class MainHomeRoute extends _i5.PageRouteInfo<MainHomeRouteArgs> {
  MainHomeRoute({_i6.Key? key})
      : super(
          MainHomeRoute.name,
          path: '/main-home-page',
          args: MainHomeRouteArgs(key: key),
        );

  static const String name = 'MainHomeRoute';
}

class MainHomeRouteArgs {
  const MainHomeRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'MainHomeRouteArgs{key: $key}';
  }
}
