import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/functions/model_bottom_sheet.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "No bookings found",
            textAlign: TextAlign.center,
            style: AppFonts.font20().copyWith(
              color: AppColor.darkGrey,
              height: 3,
            ),
          ),
          subtitle: Text(
            "Please log in to view your bookings.",
            textAlign: TextAlign.center,
            style: AppFonts.font14().copyWith(
              color: AppColor.darkHalfGrey,
              height: 1.5,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomButton(
          title: "Book a flight",
          onPressed: () {
            OpenBottomSheet.newBooking(context);
          },
        )
      ],
    );
  }
}
