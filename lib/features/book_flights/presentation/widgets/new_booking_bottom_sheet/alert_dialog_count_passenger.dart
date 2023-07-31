import 'package:flights/core/utils/app_fonts.dart';
import 'package:flights/features/book_flights/presentation/bloc/passengers_bloc/passengers_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../../core/color/app_color.dart';
import '../../../../../core/utils/app_icons.dart';

abstract class AlertDialogCountPassanger {
  static showAlertPassengerCount(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text(
        "Cancel",
        style: TextStyle(fontSize: 14, color: Colors.lightBlue),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = BlocBuilder<PassengersBloc, PassengersState>(
      builder: (context, state) {
        return TextButton(
          child: const Text(
            "Done",
            style: TextStyle(fontSize: 14, color: Colors.lightBlue),
          ),
          onPressed: () {
            if (state.children + state.adults + state.infants >= 9) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(
                    children: [
                      Icon(AppIcons.warning, color: Colors.white),
                      SizedBox(width: 8.h),
                      Text(
                        'You cannot book more than 9 passengers',
                        style:
                            AppFonts.font12().copyWith(color: AppColor.white),
                      ),
                    ],
                  ),
                  backgroundColor: AppColor.lightPink,
                  duration: const Duration(seconds: 3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h)),
                ),
              );
              Navigator.pop(context);
              context
                  .read<PassengersBloc>()
                  .add(PassengersUpdated(adults: 1, children: 0, infants: 0));
            } else {
              Navigator.pop(context);
            }
          },
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Adults",
              style: TextStyle(fontSize: 14, color: Colors.lightBlue),
            ),
            Text(
              "Children",
              style: TextStyle(fontSize: 14, color: Colors.lightBlue),
            ),
            Text(
              "Infants",
              style: TextStyle(fontSize: 14, color: Colors.lightBlue),
            ),
          ],
        ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: BlocBuilder<PassengersBloc, PassengersState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NumberPicker(
                  itemWidth: 30,
                  itemHeight: 40,
                  value: state.adults,
                  minValue: 0,
                  maxValue: 9,
                  onChanged: (value) {
                    context.read<PassengersBloc>().add(PassengersUpdated(
                        adults: value,
                        children: state.children,
                        infants: state.infants));
                  },
                ),
                NumberPicker(
                  itemWidth: 30,
                  itemHeight: 40,
                  value: state.children,
                  minValue: 0,
                  maxValue: 8,
                  onChanged: (value) {
                    context.read<PassengersBloc>().add(PassengersUpdated(
                        adults: state.adults,
                        children: value,
                        infants: state.infants));
                  },
                ),
                NumberPicker(
                  itemWidth: 30,
                  itemHeight: 40,
                  value: state.infants,
                  minValue: 0,
                  maxValue: 4,
                  onChanged: (value) {
                    context.read<PassengersBloc>().add(PassengersUpdated(
                        adults: state.adults,
                        children: state.children,
                        infants: value));
                  },
                ),
              ],
            );
          },
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
