import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
  });

  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 30.h,
          ),
          backgroundColor: AppColor.lightBlue,
        ),
        child: Text(
          title,
          style: AppFonts.font16(),
        ));
  }
}
