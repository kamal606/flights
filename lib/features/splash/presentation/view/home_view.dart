import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/utils/route_name.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/features/splash/presentation/widgets/home/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static Route route() {
    return MaterialRoute.materialPageRoute(
        name: RouteName.homeView, screen: const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.darkBlue,
      child: const SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(),
          body: HomeViewBody(),
        ),
      ),
    );
  }
}
