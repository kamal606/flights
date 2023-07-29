import 'package:flutter/material.dart';

abstract class FlightDate {
  DateTime? startDate;
  DateTime? returnDate;
  Future<void> selectStartDate(BuildContext context) async {
    final DateTime? pickedStartDate = await showDatePicker(
      context: context,
      initialDate: startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedStartDate != null) {
      startDate = pickedStartDate;
    }
  }

  Future<void> selectReturnDate(BuildContext context) async {
    final DateTime? pickedReturnDate = await showDatePicker(
      context: context,
      initialDate: returnDate ?? startDate ?? DateTime.now(),
      firstDate: startDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (pickedReturnDate != null) {
      returnDate = pickedReturnDate;
    }
  }
}
