import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class FlightDate {
  //-------------------------- start date ---------------------------
  static Future<void> selectStartDate(BuildContext context) async {
    final state = context.read<FlightDateBloc>().state;
    final DateTime? pickedStartDate = await showDatePicker(
      context: context,
      initialDate: state.dateTimeStart ?? DateTime.now(),
      firstDate: state.dateTimeStart ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedStartDate != null) {
      // ignore: use_build_context_synchronously
      BlocProvider.of<FlightDateBloc>(context)
          .add(FlightDateStart(dateTimeStart: pickedStartDate));

      // ignore: use_build_context_synchronously
      selectReturnDate(context, pickedStartDate);
    }
  }

  //-------------------------- return date ---------------------------
  static Future<void> selectReturnDate(
      BuildContext context, DateTime? startDate) async {
    final state = context.read<FlightDateBloc>().state;
    final DateTime? pickedStartDate = startDate ?? state.dateTimeStart;

    DateTime? initialDate = state.dateTimeReturn ?? pickedStartDate;
    initialDate =
        initialDate!.isBefore(pickedStartDate!) ? pickedStartDate : initialDate;

    final DateTime? pickedReturnDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: pickedStartDate,
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedReturnDate != null &&
        pickedReturnDate.isBefore(pickedStartDate)) {
    } else if (pickedReturnDate != null) {
      // ignore: use_build_context_synchronously
      BlocProvider.of<FlightDateBloc>(context)
          .add(FlightDateReturn(dateTimeReturn: pickedReturnDate));
    }
  }
}
