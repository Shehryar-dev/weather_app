part of 'bottom_nav_bloc.dart';

class BottomNavState extends Equatable{
  final int currentIndex;
  const BottomNavState({required this.currentIndex,
  });
  BottomNavState copyWith({int? currentIndex,
  }) => BottomNavState(currentIndex: currentIndex ?? this.currentIndex,
  );
  @override
  // TODO: implement props
  List<Object?> get props => [currentIndex];
}
