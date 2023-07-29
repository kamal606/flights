import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'flight_date_event.dart';

class FlightDateBloc extends Bloc<FlightDateEvent, FlightDateState> {
  FlightDateBloc() : super(const FlightDateInitial()) {
    on<FlightDateStart>(_onFlightDateStart);
    on<FlightDateReturn>(_onFlightDateReturn);
  }

  void _onFlightDateStart(
    FlightDateStart event,
    Emitter<FlightDateState> emit,
  ) async {
    final currentState = state;
    emit(currentState.copyWith(dateTimeStart: event.dateTimeStart));
  }

  void _onFlightDateReturn(
    FlightDateReturn event,
    Emitter<FlightDateState> emit,
  ) async {
    final currentState = state;
    emit(currentState.copyWith(dateTimeReturn: event.dateTimeReturn));
  }
}
