import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/utils/route_name.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/features/splash/presentation/widgets/home/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static Route route() {
    return MaterialRoute.materialPageRoute(
        name: RouteName.homeView, screen: const HomeView());
  }

  @override
  State<HomeView> createState() => _HomeViewState();
}

int index = 0;

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.darkBlue,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: MyBottomNavigationBar(
            onItemTapped: (i) {
              index = i;
              setState(() {});
            },
            selectedIndex: index,
          ),
          appBar: const CustomAppBar(),
          body: const HomeViewBody(),
        ),
      ),
    );
  }
}
