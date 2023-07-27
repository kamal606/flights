import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/constant/assets.dart';
import 'package:flights/core/functions/scaled_size.dart';
import 'package:flutter/material.dart';

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
        height: ScaledSize.scaledSize(40, context),
        width: ScaledSize.scaledSize(140, context),
      ),
      backgroundColor: AppColor.background,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
