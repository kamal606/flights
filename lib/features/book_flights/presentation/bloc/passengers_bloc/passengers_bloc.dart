import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'passengers_event.dart';
part 'passengers_state.dart';

class PassengersBloc extends Bloc<PassengersEvent, PassengersState> {
  PassengersBloc()
      : super(const PassengersState(adults: 1, children: 0, infants: 0)) {
    on<PassengersUpdated>(_onPassengersUpdated);
  }

  _onPassengersUpdated(
    PassengersUpdated event,
    Emitter<PassengersState> emit,
  ) async {
    emit(PassengersState(
        adults: event.adults,
        children: event.children,
        infants: event.infants));
  }
}
