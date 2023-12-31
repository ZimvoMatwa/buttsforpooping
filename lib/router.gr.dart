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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'features/boleka/presentation/pages/boleka_home_page.dart' as _i2;
import 'features/boleka/presentation/pages/boleka_success_page.dart' as _i3;
import 'features/home/presentation/pages/home_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    BolekaHomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BolekaHomePage(),
      );
    },
    GenericSuccessRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.GenericSuccessPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/homePage',
        ),
        _i4.RouteConfig(
          BolekaHomeRoute.name,
          path: '/bolekaHomePage',
        ),
        _i4.RouteConfig(
          GenericSuccessRoute.name,
          path: '/successPage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/homePage',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BolekaHomePage]
class BolekaHomeRoute extends _i4.PageRouteInfo<void> {
  const BolekaHomeRoute()
      : super(
          BolekaHomeRoute.name,
          path: '/bolekaHomePage',
        );

  static const String name = 'BolekaHomeRoute';
}

/// generated route for
/// [_i3.GenericSuccessPage]
class GenericSuccessRoute extends _i4.PageRouteInfo<void> {
  const GenericSuccessRoute()
      : super(
          GenericSuccessRoute.name,
          path: '/successPage',
        );

  static const String name = 'GenericSuccessRoute';
}
