import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
    this.colorButton,
    this.radius = true,
    this.colorText,
    this.isLocation = false,
  });

  final void Function()? onPressed;
  final String title;
  final Color? colorButton;
  final Color? colorText;
  final bool radius;
  final bool isLocation;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: radius
                  ? BorderRadius.circular(8.h)
                  : BorderRadius.circular(0)),
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 30.h,
          ),
          backgroundColor: colorButton ?? AppColor.lightBlue,
        ),
        child: isLocation
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: AppFonts.font16()
                        .copyWith(color: colorText ?? AppColor.white),
                  ),
                  Icon(
                    AppIcons.locationCrosshairs,
                    size: 18.h,
                    color: AppColor.darkPink,
                  )
                ],
              )
            : Text(
                title,
                style: AppFonts.font16()
                    .copyWith(color: colorText ?? AppColor.white),
              ));
  }
}
