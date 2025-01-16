import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:loglytics/loglytics.dart';
import 'package:{{packageName.snakeCase()}}/core/constants/k_keys.dart';
import 'package:{{packageName.snakeCase()}}/core/dtos/extra_arguments.dart';
import 'package:{{packageName.snakeCase()}}/core/extensions/object_extension.dart';
import 'package:{{packageName.snakeCase()}}/core/extensions/string_extension.dart';
import 'package:{{packageName.snakeCase()}}/core/routing/core_router.dart';
import 'package:{{packageName.snakeCase()}}/core/views/startup/startup_view.dart';

class BaseRouter with Loglytics {
  BaseRouter() {
    coreRouter.routerDelegate.addListener(onRouteChanged);
  }

  // 📍 LOCATOR ------------------------------------------------------------------------------- \\

  static BaseRouter get locate => GetIt.I.get();
  static void registerLazySingleton() => GetIt.I.registerLazySingleton(BaseRouter.new);

  // 🧩 DEPENDENCIES -------------------------------------------------------------------------- \\
  // 🎬 INIT & DISPOSE ------------------------------------------------------------------------ \\
  // 👂 LISTENERS ----------------------------------------------------------------------------- \\
  void onRouteChanged({String? location}) {
    try {
      if (location != null) {
        _trySendScreenAnalytic(route: location);
        return;
      }
      final RouteMatch lastMatch = coreRouter.routerDelegate.currentConfiguration.last;
      final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : coreRouter.routerDelegate.currentConfiguration;
      final route = matchList.uri.toString();
      _trySendScreenAnalytic(route: route);
    } catch (error, stackTrace) {
      log.error(
        'Unexpected ${error.runtimeType} caught while fetching location',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  // ⚡️ OVERRIDES ----------------------------------------------------------------------------- \\
  // 🎩 STATE --------------------------------------------------------------------------------- \\

  static final GlobalKey<NavigatorState> rootNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'root');

  String _route = '';
  bool didInitialLocation = false;

  // 🛠 UTIL ---------------------------------------------------------------------------------- \\
  // 🧲 FETCHERS ------------------------------------------------------------------------------ \\

  String get route => _route;
  BuildContext get context => rootNavigatorKey.currentContext!;

  // 🏗️ HELPERS ------------------------------------------------------------------------------- \\

  static Page<dynamic> _buildPage({required Widget child}) {
    if (kIsWeb || Platform.isAndroid) {
      return MaterialPage(child: child);
    } else {
      return CupertinoPage(child: child);
    }
  }

  void _trySendScreenAnalytic({required String route}) {
    if (_route != route) {
      analytics.service.screen(subject: route);
      _route = route;
    }
  }

  // 🚦 ROUTERS ------------------------------------------------------------------------------ \\

  /// [CoreRouter]
  final coreRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: StartupView.path.asRootPath,
    routes: [
      startupView,
    ],
  );

  // 🎯 VIEWS -------------------------------------------------------------------------------- \\

  static GoRoute get startupView => GoRoute(
    path: StartupView.path.asRootPath,
    pageBuilder: (context, state) => _buildPage(
      child: const StartupView(),
    ),
  );

// 🪄 MUTATORS ------------------------------------------------------------------------------ \\
}

extension on GoRouterState {
  ExtraArguments? arguments() => extra?.asType<ExtraArguments>();
  String? get id => pathParameters[kKeys.id] ?? uri.queryParameters[kKeys.id] ?? arguments()?.id;
}
