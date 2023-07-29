part of 'bottom_nav_bar_bloc.dart';

@immutable
abstract class BottomNavBarState extends Equatable {}

class BottomNavBarInitial extends BottomNavBarState {
  @override
  List<Object?> get props => [];
}

class BottomNavUpdated extends BottomNavBarState {
  final int selectedIndex;

  BottomNavUpdated(this.selectedIndex);
  @override
  List<Object?> get props => [selectedIndex];
}
