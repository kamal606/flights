import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/constant/assets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(
        Assets.imagesFlyAkeedEnglish,
        width: 120.h,
      ),
      backgroundColor: AppColor.background,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
