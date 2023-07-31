part of 'trip_destination_bloc.dart';

class TripDestinationState extends Equatable {
  final String from;
  final String to;
  final String cityFrom;
  final String cityTo;

  const TripDestinationState({
    required this.from,
    required this.to,
    required this.cityFrom,
    required this.cityTo,
  });

  @override
  List<Object> get props => [from, to, cityFrom, cityTo];
}
