import 'package:flights/core/functions/flight_date.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/core/widgets/custom_calendar.dart';
import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_bloc.dart';
import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

abstract class OpenBottomSheet {
  static void newBooking(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return BlocBuilder<FlightDateBloc, FlightDateState>(
          builder: (context, state) {
            final DateFormat month = DateFormat('MMM yy');
            final DateFormat dayNumber = DateFormat('d');
            final DateFormat dayText = DateFormat('EEE');

            String startmonth = state.dateTimeStart != null
                ? month.format(state.dateTimeStart!)
                : '';
            String returnmonth = state.dateTimeReturn != null
                ? month.format(state.dateTimeReturn!)
                : '';
            String startdayNumber = state.dateTimeStart != null
                ? dayNumber.format(state.dateTimeStart!)
                : '';
            String returndayNumber = state.dateTimeReturn != null
                ? dayNumber.format(state.dateTimeReturn!)
                : '';
            String startDayText = state.dateTimeStart != null
                ? dayText.format(state.dateTimeStart!)
                : '';
            String returnDayText = state.dateTimeReturn != null
                ? dayText.format(state.dateTimeReturn!)
                : '';

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
                          Expanded(
                            child: CustomBoxCalendar(
                              onTap: () => FlightDate.selectStartDate(context),
                              title: "Departing Date",
                              dayNumber: startdayNumber,
                              dayText: startDayText,
                              month: startmonth,
                            ),
                          ),
                          SizedBox(
                            width: 15.h,
                          ),
                          Expanded(
                            child: CustomBoxCalendar(
                              onTap: () => FlightDate.selectReturnDate(
                                  context, state.dateTimeStart),
                              title: "Returning Date",
                              dayNumber: returndayNumber,
                              dayText: returnDayText,
                              month: returnmonth,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
