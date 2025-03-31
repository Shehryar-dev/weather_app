import 'package:weather_app/core/constants/screen_path.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState(currentIndex: 0,)) {
    on<ChangeNavIndex>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
  }
}
