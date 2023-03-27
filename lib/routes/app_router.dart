import 'package:birthyay/app/model/views/emptypage.dart';
import 'package:birthyay/app/model/views/splashscreen/splashscreen.dart';
import 'package:birthyay/app/model/views/welcome/welcome.dart';
import 'package:birthyay/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_route_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppRouter {
  static GoRouter get router => _router;
  static void goNamed(
    String name, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) =>
      router.goNamed(
        name,
        params: params,
        queryParams: queryParams,
        extra: extra,
      );
}

final GoRouter _router =
    GoRouter(initialLocation: _AppRoutePaths.splashScren, routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return SplashScreen();
      },
      routes: [
        GoRoute(
          path: _AppRoutePaths.emptyPage,
          name: Routes.emptyPage,
          builder: (context, state) {
            return EmptyPage();
          },
        ),
      ]),
  GoRoute(
    path: _AppRoutePaths.splashScren,
    name: Routes.splashScreen,
    builder: (context, state) {
      return const SplashScreen();
    },
  ),
  GoRoute(
    path: _AppRoutePaths.welcomeScreen,
    name: Routes.welcomeScreen,
    builder: (context, state) {
      return const WelcomeScreen();
    },
  )
]);
