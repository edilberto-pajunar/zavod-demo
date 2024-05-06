// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:zavod_demo/model/place.dart' as _i7;
import 'package:zavod_demo/screens/home_screen.dart' as _i2;
import 'package:zavod_demo/screens/maps/map_detail_screen.dart' as _i3;
import 'package:zavod_demo/screens/menu/history_screen.dart' as _i1;
import 'package:zavod_demo/screens/menu/profile_screen.dart' as _i4;
import 'package:zavod_demo/screens/menu/support_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HistoryRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    MapDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MapDetailRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.MapDetailScreen(
          place: args.place,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
      );
    },
    SupportRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SupportScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HistoryScreen]
class HistoryRoute extends _i6.PageRouteInfo<void> {
  const HistoryRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MapDetailScreen]
class MapDetailRoute extends _i6.PageRouteInfo<MapDetailRouteArgs> {
  MapDetailRoute({
    required _i7.Place place,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          MapDetailRoute.name,
          args: MapDetailRouteArgs(
            place: place,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MapDetailRoute';

  static const _i6.PageInfo<MapDetailRouteArgs> page =
      _i6.PageInfo<MapDetailRouteArgs>(name);
}

class MapDetailRouteArgs {
  const MapDetailRouteArgs({
    required this.place,
    this.key,
  });

  final _i7.Place place;

  final _i8.Key? key;

  @override
  String toString() {
    return 'MapDetailRouteArgs{place: $place, key: $key}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SupportScreen]
class SupportRoute extends _i6.PageRouteInfo<void> {
  const SupportRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SupportRoute.name,
          initialChildren: children,
        );

  static const String name = 'SupportRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
