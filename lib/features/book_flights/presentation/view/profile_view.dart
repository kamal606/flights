import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/utils/route_name.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("aa"),
      ),
    );
  }

  static Route route() {
    return MaterialRoute.materialPageRoute(
        name: RouteName.profileView, screen: const ProfileView());
  }
}
