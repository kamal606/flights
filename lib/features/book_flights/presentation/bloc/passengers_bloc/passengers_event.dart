part of 'passengers_bloc.dart';

abstract class PassengersEvent extends Equatable {}

class PassengersUpdated extends PassengersEvent {
  final int adults;
  final int children;
  final int infants;

  PassengersUpdated(
      {required this.adults, required this.children, required this.infants});

  @override
  List<Object?> get props => [adults, children, infants];
}
