part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarState {}

class BottomNavBarInitial extends BottomNavBarState {}

class BottomNavUpdated extends BottomNavBarState {
  final int selectedIndex;

  BottomNavUpdated(this.selectedIndex);
}
