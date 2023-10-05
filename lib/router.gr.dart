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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'features/boleka/presentation/pages/boleka_home_page.dart' as _i2;
import 'features/home/presentation/pages/home_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    BolekaHomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BolekaHomePage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/homePage',
        ),
        _i3.RouteConfig(
          BolekaHomeRoute.name,
          path: '/bolekaHomePage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/homePage',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BolekaHomePage]
class BolekaHomeRoute extends _i3.PageRouteInfo<void> {
  const BolekaHomeRoute()
      : super(
          BolekaHomeRoute.name,
          path: '/bolekaHomePage',
        );

  static const String name = 'BolekaHomeRoute';
}
