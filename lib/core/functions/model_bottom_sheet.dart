import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/core/widgets/custom_calendar.dart';
import 'package:flutter/material.dart';
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

class MyFlightBookingScreen extends StatefulWidget {
  const MyFlightBookingScreen({super.key});

  @override
  _MyFlightBookingScreenState createState() => _MyFlightBookingScreenState();
}

class _MyFlightBookingScreenState extends State<MyFlightBookingScreen> {
  DateTime? startDate;
  DateTime? returnDate;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? pickedStartDate = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedStartDate != null) {
      setState(() {
        startDate = pickedStartDate;
      });
    }
  }

  Future<void> _selectReturnDate(BuildContext context) async {
    final DateTime? pickedReturnDate = await showDatePicker(
      context: context,
      initialDate: returnDate ?? startDate ?? DateTime.now(),
      firstDate: startDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedReturnDate != null) {
      setState(() {
        returnDate = pickedReturnDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Booking'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Start Date'),
            subtitle: Text(startDate?.toString() ?? 'Select a date'),
            onTap: () => _selectStartDate(context),
          ),
          ListTile(
            title: const Text('Return Date'),
            subtitle: Text(returnDate?.toString() ?? 'Select a date'),
            onTap: () => _selectReturnDate(context),
          ),
        ],
      ),
    );
  }
}
