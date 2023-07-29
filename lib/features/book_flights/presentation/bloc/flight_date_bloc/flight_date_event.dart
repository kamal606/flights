part of 'flight_date_bloc.dart';

abstract class FlightDateEvent extends Equatable {
  const FlightDateEvent();

  @override
  List<Object?> get props => [];
}

class FlightDateStart extends FlightDateEvent {
  final DateTime? dateTimeStart;

  const FlightDateStart({required this.dateTimeStart});

  @override
  List<Object?> get props => [dateTimeStart];
}

class FlightDateReturn extends FlightDateEvent {
  final DateTime? dateTimeReturn;

  const FlightDateReturn({required this.dateTimeReturn});

  @override
  List<Object?> get props => [dateTimeReturn];
}
