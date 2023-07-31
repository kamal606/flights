import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      cursorColor: AppColor.lightBlue,
      decoration: InputDecoration(
        prefixIcon: Icon(
          AppIcons.search,
          size: 14.h,
          color: AppColor.darkHalfGrey,
        ),
        hintText: "Search",
        hintStyle: AppFonts.font12().copyWith(color: AppColor.darkHalfGrey),
        filled: true,
        fillColor: AppColor.white,
        contentPadding: EdgeInsets.all(10.h),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5.h),
        ),
      ),
    );
  }
}
