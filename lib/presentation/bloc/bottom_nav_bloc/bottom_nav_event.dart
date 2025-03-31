part of 'bottom_nav_bloc.dart';

class BottomNavEvent extends Equatable{
 const BottomNavEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChangeNavIndex extends BottomNavEvent{
  final int index;
  const ChangeNavIndex({required this.index});
  @override
  // TODO: implement props
  List<Object?> get props => [index];
}
