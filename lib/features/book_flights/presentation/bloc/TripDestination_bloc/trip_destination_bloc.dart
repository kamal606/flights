import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'trip_destination_event.dart';
part 'trip_destination_state.dart';

class TripDestinationBloc
    extends Bloc<TripDestinationEvent, TripDestinationState> {
  TripDestinationBloc()
      : super(const TripDestinationState(
            from: "Select", to: "Select", cityFrom: "city", cityTo: "city")) {
    on<SwitchDestination>(_onSwitchDestination);
  }

  void _onSwitchDestination(
      SwitchDestination event, Emitter<TripDestinationState> emit) async {
    emit(TripDestinationState(
        from: event.to,
        to: event.from,
        cityFrom: event.cityTo,
        cityTo: event.cityFrom));
  }
}
