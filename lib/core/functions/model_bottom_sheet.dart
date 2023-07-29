import 'package:flights/core/functions/start_end_date.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/core/widgets/custom_calendar.dart';
import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class OpenBottomSheet {
  static void newBooking(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        final deviceHeight = MediaQuery.of(context).size.height;

        return SizedBox(
          height: deviceHeight - kToolbarHeight,
          child: Scaffold(
            appBar: CustomAppBar(
              isArrow: true,
              isTitle: true,
              title: "New Booking",
              leadingPress: () {},
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                          child: CustomBoxCalendar(
                        title: "Departing Date",
                        dayNumber: "31",
                        dayText: "Mon",
                        month: "Jul '23",
                      )),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Expanded(
                          child: CustomBoxCalendar(
                        title: "Returning Date",
                        dayNumber: "1",
                        dayText: "Tue",
                        month: "Aug '23",
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyFlightBookingScreen extends StatelessWidget {
  const MyFlightBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FlightDateBloc>().state;

    String startDateSubtitle =
        state.dateTimeStart?.toString() ?? 'Select a date';
    String returnDateSubtitle =
        state.dateTimeReturn?.toString() ?? 'Select a date';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Booking'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Start Date'),
            subtitle: Text(startDateSubtitle),
            onTap: () => FlightDate.selectStartDate(context),
          ),
          ListTile(
            title: const Text('Return Date'),
            subtitle: Text(returnDateSubtitle),
            onTap: () =>
                FlightDate.selectReturnDate(context, state.dateTimeStart),
          ),
        ],
      ),
    );
  }
}
