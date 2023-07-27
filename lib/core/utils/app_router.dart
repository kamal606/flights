import 'package:flights/core/utils/route_name.dart';
import 'package:flights/features/splash/presentation/view/home_view.dart';
import 'package:flights/features/splash/presentation/view/spalsh_view.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    // ignore: avoid_print
    print('Route: ${routeSettings.name}');
    switch (routeSettings.name) {
      case RouteName.splahView:
        return SplashView.route();
      case RouteName.homeView:
        return HomeView.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error View'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Something went wrong!'),
        ),
      ),
    );
  }
}
