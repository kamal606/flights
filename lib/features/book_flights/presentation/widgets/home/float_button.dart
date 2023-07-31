import 'package:flights/core/color/app_color.dart';
import 'package:flights/features/book_flights/presentation/view/modal_bottom_sheet.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 100.h,
        height: 90.h,
        padding: EdgeInsets.only(bottom: 30.h),
        child: FloatingActionButton(
          backgroundColor: AppColor.lightBlue,
          onPressed: () {
            OpenBottomSheet.newBooking(context);
          },
          child: Icon(
            AppIcons.plane,
            size: 22.h,
          ),
        ),
      ),
    );
  }
}
