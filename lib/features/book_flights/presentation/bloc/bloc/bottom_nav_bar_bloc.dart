import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavItemTapped>(_onBottomNavItemTapped);
  }

  void _onBottomNavItemTapped(
    BottomNavItemTapped event,
    Emitter<BottomNavBarState> emit,
  ) async {
    emit(BottomNavUpdated(event.selectedIndex));
  }
}
