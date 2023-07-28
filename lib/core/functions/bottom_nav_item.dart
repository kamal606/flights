import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class BottomNavBarItem {
  static BottomNavigationBarItem bottomNavigationBarItem(
      {IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 5.h),
        child: Icon(
          icon,
          size: 22.h,
        ),
      ),
      label: label,
    );
  }
}
