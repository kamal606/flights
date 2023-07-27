import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/utils/route_name.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static Route route() {
    return MaterialRoute.materialPageRoute(
        name: RouteName.homeView, screen: const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
