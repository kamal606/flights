import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainFromAndToSearch extends StatelessWidget {
  const ContainFromAndToSearch({
    super.key,
    this.leftRadius = false,
    this.rightRaduis = false,
    required this.title,
    required this.cityOrAirport,
  });
  final bool leftRadius;
  final bool rightRaduis;
  final String title;
  final String cityOrAirport;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: leftRadius ? Radius.circular(5.h) : const Radius.circular(0),
          bottomLeft:
              leftRadius ? Radius.circular(5.h) : const Radius.circular(0),
          topRight:
              rightRaduis ? Radius.circular(5.h) : const Radius.circular(0),
          bottomRight:
              rightRaduis ? Radius.circular(5.h) : const Radius.circular(0),
        ),
      ),
      height: 65.h,
      child: Row(
        children: [
          Icon(
            AppIcons.locationDot,
            size: 28.h,
            color: AppColor.darkPink,
          ),
          SizedBox(
            width: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppFonts.font22().copyWith(
                    color: AppColor.lightBlue, fontWeight: FontWeight.bold),
              ),
              Text(
                cityOrAirport,
                style: AppFonts.font10().copyWith(color: AppColor.darkGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
