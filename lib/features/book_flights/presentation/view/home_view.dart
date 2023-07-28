import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/functions/material_route.dart';
import 'package:flights/core/functions/model_bottom_sheet.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flights/core/utils/route_name.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/features/book_flights/presentation/bloc/bloc/bottom_nav_bar_bloc.dart';

import 'package:flights/features/book_flights/presentation/view/profile_view.dart';
import 'package:flights/features/book_flights/presentation/widgets/home/bottom_nav_bar.dart';

import 'package:flights/features/book_flights/presentation/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      child: SafeArea(
        child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            final List<Widget> screens = [
              const HomeViewBody(),
              const HomeViewBody(),
              const HomeViewBody(),
              const HomeViewBody(),
              const ProfileView(),
            ];
            final selectedIndex =
                state is BottomNavUpdated ? state.selectedIndex : 0;
            return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(bottom: 30.h),
                  child: FloatingActionButton(
                    backgroundColor: AppColor.lightBlue,
                    onPressed: () {},
                    child: Icon(AppIcons.plane),
                  ),
                ),
              ),
              bottomNavigationBar: MyBottomNavigationBar(
                selectedIndex: selectedIndex,
                onItemTapped: (index) {
                  if (index == 1) {
                    OpenBottomSheet.openModal(context);
                  }
                  if (index == 3) {
                    OpenBottomSheet.openModal(context);
                  }
                  BlocProvider.of<BottomNavBarBloc>(context)
                      .add(BottomNavItemTapped(index));
                },
              ),
              appBar: const CustomAppBar(),
              body: screens[selectedIndex],
            );
          },
        ),
      ),
    );
  }
}
