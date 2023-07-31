import 'package:flights/core/utils/app_icons.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/count_passenger.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/select_date.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/trip_destination.dart';
import 'package:flights/features/book_flights/presentation/widgets/search_bottom_sheet/custom_from_to_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class OpenBottomSheet {
  //------------------------ new book -----------------------------
  static void newBooking(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: deviceHeight - kToolbarHeight,
          child: Scaffold(
            appBar: CustomAppBar(
              isArrow: true,
              isTitle: true,
              title: "New Booking",
              leadingPress: () {
                Navigator.pop(context);
              },
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  const TripDestination(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const SelectDate(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const CustomCountPassengers()
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //------------------------ search -----------------------------
  static void search(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: deviceHeight - kToolbarHeight,
          child: Scaffold(
            appBar: CustomAppBar(
              isArrow: false,
              isTitle: true,
              title: "Search",
              leadingIcon: AppIcons.xmark,
              leadingPress: () {
                Navigator.pop(context);
              },
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  const CustomFromAndToSearch()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
