import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/features/splash/presentation/widgets/home/background.dart';
import 'package:flights/features/splash/presentation/widgets/home/title_with_button.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundHome(),
        TitleWithButton(),
      ],
    );
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  final int selectedIndex;
  final void Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.background,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          backgroundColor: AppColor.background,
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: AppColor.lightBlue,
      unselectedItemColor: AppColor.darkGrey,
      unselectedLabelStyle:
          AppFonts.font12().copyWith(color: AppColor.darkGrey),
      selectedLabelStyle: AppFonts.font12(),
      showUnselectedLabels: true,
      onTap: onItemTapped,
    );
  }
}
