part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarEvent extends Equatable {}

class BottomNavItemTapped extends BottomNavBarEvent {
  final int selectedIndex;

  BottomNavItemTapped(this.selectedIndex);
  @override
  List<Object?> get props => [selectedIndex];
}
