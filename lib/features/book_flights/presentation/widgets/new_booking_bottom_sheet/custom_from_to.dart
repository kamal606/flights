import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color/app_color.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../../../../core/utils/app_icons.dart';

class CustomChooseFromAndToTrip extends StatelessWidget {
  const CustomChooseFromAndToTrip({
    super.key,
    required this.codeCountry,
    required this.city,
    this.locationArrow,
    this.isArrived = false,
  });
  final String codeCountry;
  final String city;
  final IconData? locationArrow;
  final bool isArrived;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isArrived ? "To " : "From ",
                style: AppFonts.font12().copyWith(color: AppColor.lightPink),
              ),
              Icon(
                isArrived ? AppIcons.planeArrival : AppIcons.planeDeparture,
                size: 10.h,
                color: AppColor.lightPink,
              )
            ],
          ),
          Text(
            codeCountry,
            style: AppFonts.font28().copyWith(
              color: AppColor.darkBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$city ",
                style: AppFonts.font12().copyWith(color: AppColor.darkHalfGrey),
              ),
              Icon(
                locationArrow,
                size: 10.h,
                color: AppColor.lightBlue,
              )
            ],
          )
        ],
      ),
    );
  }
}
