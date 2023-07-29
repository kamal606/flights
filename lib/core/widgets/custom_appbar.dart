import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/constant/assets.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.leadingPress,
    this.leadingIcon,
    this.isArrow = false,
    this.title,
    this.isTitle = false,
  });
  final void Function()? leadingPress;
  final IconData? leadingIcon;
  final bool isArrow;
  final bool isTitle;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: leadingPress,
        icon: Icon(
          isArrow ? AppIcons.arrow : leadingIcon,
          color: AppColor.lightBlue,
          size: 22.h,
        ),
      ),
      centerTitle: true,
      title: isTitle
          ? Text(
              title!,
              style: AppFonts.font20().copyWith(color: AppColor.darkBlue),
            )
          : Image.asset(
              Assets.imagesFlyAkeedEnglish,
              width: 120.h,
            ),
      backgroundColor: AppColor.background,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.h);
}
