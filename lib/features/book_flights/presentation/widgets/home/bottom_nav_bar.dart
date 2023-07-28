import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/functions/bottom_nav_item.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return SizedBox(
      height: 60.h,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.background,
        items: [
          BottomNavBarItem.bottomNavigationBarItem(
            icon: AppIcons.bookings,
            label: "Bookings",
          ),
          BottomNavBarItem.bottomNavigationBarItem(
            icon: AppIcons.hotel,
            label: "Hotel",
          ),
          BottomNavBarItem.bottomNavigationBarItem(
            icon: AppIcons.akeedCare,
            label: "AkeedCare",
          ),
          BottomNavBarItem.bottomNavigationBarItem(
            icon: AppIcons.more,
            label: "More",
          ),
        ],
        selectedItemColor: AppColor.lightBlue,
        unselectedItemColor: AppColor.darkGrey,
        unselectedLabelStyle:
            AppFonts.font12().copyWith(color: AppColor.darkGrey),
        selectedLabelStyle: AppFonts.font12(),
        showUnselectedLabels: true,
        onTap: onItemTapped,
        currentIndex: selectedIndex,
      ),
    );
  }
}
