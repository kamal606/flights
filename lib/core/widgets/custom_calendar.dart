import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoxCalendar extends StatelessWidget {
  const CustomBoxCalendar(
      {super.key,
      required this.title,
      required this.dayNumber,
      required this.month,
      required this.dayText,
      this.onTap});
  final String title;
  final String dayNumber;
  final String dayText;
  final String month;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.white, borderRadius: BorderRadius.circular(6.h)),
        padding: EdgeInsets.all(10.h),
        height: 75.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppFonts.font10().copyWith(
                color: AppColor.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      dayNumber,
                      style:
                          AppFonts.font32().copyWith(color: AppColor.darkBlue),
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          month,
                          style: AppFonts.font12()
                              .copyWith(color: AppColor.darkBlue),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          dayText,
                          style: AppFonts.font12()
                              .copyWith(color: AppColor.darkBlue),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  AppIcons.calendar,
                  size: 22.h,
                  color: AppColor.lightPink,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
