import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/constant/assets.dart';
import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/utils/route_name.dart';

import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static Route route() {
    return MaterialRoute.materialPageRoute(
        name: RouteName.splahView, screen: const SplashView());
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacementNamed(context, RouteName.homeView);
    });
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Image.asset(
          Assets.imagesLogo,
        ),
      ),
    );
  }
}
