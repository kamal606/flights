import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_fonts.dart';

import 'package:flights/features/book_flights/presentation/bloc/passengers_bloc/passengers_bloc.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/alert_dialog_count_passenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCountPassengers extends StatelessWidget {
  const CustomCountPassengers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AlertDialogCountPassanger.showAlertPassengerCount(context);
      },
      child: BlocBuilder<PassengersBloc, PassengersState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(6.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            height: 85.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Adults",
                      style:
                          AppFonts.font14().copyWith(color: AppColor.lightBlue),
                    ),
                    Text(
                      state.adults.toString(),
                      style:
                          AppFonts.font28().copyWith(color: AppColor.darkBlue),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0.5.h,
                  endIndent: 10.h,
                  indent: 10.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Children",
                      style:
                          AppFonts.font14().copyWith(color: AppColor.lightBlue),
                    ),
                    Text(
                      state.children.toString(),
                      style:
                          AppFonts.font28().copyWith(color: AppColor.darkBlue),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0.5.h,
                  endIndent: 10.h,
                  indent: 10.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Infants",
                      style:
                          AppFonts.font14().copyWith(color: AppColor.lightBlue),
                    ),
                    Text(
                      state.infants.toString(),
                      style:
                          AppFonts.font28().copyWith(color: AppColor.darkBlue),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
