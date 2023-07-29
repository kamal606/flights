// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';

// import 'flight_date_event.dart';
// import 'flight_date_state.dart';

// class FlightDateBloc extends Bloc<FlightDateEvent, FlightDateState> {
//   FlightDateBloc() : super(FlightDateInitial()) {
//     on<FlightDateStartEvent>((event, emit) async {
//       final pickedStartDate = await showDatePicker(
//         context: event.context,
//         initialDate: startDate ?? DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime.now().add(const Duration(days: 365)),
//       );

//       if (pickedStartDate != null) {
//         startDate = pickedStartDate;
//         emit(FlightDateStartState(startDate!));
//       }
//     });

//     on<FlightDateReturnEvent>((event, emit) async {
//       final pickedReturnDate = await showDatePicker(
//         context: event.context,
//         initialDate: returnDate ?? startDate ?? DateTime.now(),
//         firstDate: startDate ?? DateTime.now(),
//         lastDate: DateTime.now().add(const Duration(days: 365)),
//       );

//       if (pickedReturnDate != null) {
//         returnDate = pickedReturnDate;
//         emit(FlightDateReturnState(returnDate!));
//       }
//     });
//   }

//   DateTime? startDate;
//   DateTime? returnDate;
// }
