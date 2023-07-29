import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class FlightDateState extends Equatable {
  final DateTime? dateTimeStart;
  final DateTime? dateTimeReturn;

  const FlightDateState({
    this.dateTimeStart,
    this.dateTimeReturn,
  });

  FlightDateState copyWith({
    DateTime? dateTimeStart,
    DateTime? dateTimeReturn,
  }) {
    return FlightDateState(
      dateTimeStart: dateTimeStart ?? this.dateTimeStart,
      dateTimeReturn: dateTimeReturn ?? this.dateTimeReturn,
    );
  }

  @override
  List<Object?> get props => [dateTimeStart, dateTimeReturn];
}

class FlightDateInitial extends FlightDateState {
  const FlightDateInitial();

  @override
  List<Object?> get props => [];
}

class FlightDateStartState extends FlightDateState {
  const FlightDateStartState({required DateTime dateTimeStart})
      : super(dateTimeStart: dateTimeStart);
}

class FlightDateReturnState extends FlightDateState {
  const FlightDateReturnState({required DateTime dateTimeReturn})
      : super(dateTimeReturn: dateTimeReturn);
}
