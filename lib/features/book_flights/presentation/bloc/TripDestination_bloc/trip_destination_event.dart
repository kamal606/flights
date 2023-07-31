part of 'trip_destination_bloc.dart';

abstract class TripDestinationEvent extends Equatable {
  const TripDestinationEvent();

  @override
  List<Object> get props => [];
}

class SwitchDestination extends TripDestinationEvent {
  final String cityFrom;
  final String cityTo;
  final String from;
  final String to;
  const SwitchDestination({
    required this.from,
    required this.to,
    required this.cityFrom,
    required this.cityTo,
  });
  @override
  List<Object> get props => [from, to, cityFrom, cityTo];
}
