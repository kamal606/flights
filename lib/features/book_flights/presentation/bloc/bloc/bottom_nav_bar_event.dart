part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarEvent {}

class BottomNavItemTapped extends BottomNavBarEvent {
  final int selectedIndex;

  BottomNavItemTapped(this.selectedIndex);
}
