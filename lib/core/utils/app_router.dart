import 'package:bookly_app_v1/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app_v1/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = 'home view';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    ],
  );
}
