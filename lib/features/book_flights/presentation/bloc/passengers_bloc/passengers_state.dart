part of 'passengers_bloc.dart';

class PassengersState extends Equatable {
  final int adults;
  final int children;
  final int infants;

  const PassengersState(
      {required this.adults, required this.children, required this.infants});

  @override
  List<Object?> get props => [adults, children, infants];
}
