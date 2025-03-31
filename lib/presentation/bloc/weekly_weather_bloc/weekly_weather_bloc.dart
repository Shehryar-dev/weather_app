

import 'package:weather_app/core/constants/screen_path.dart';

part 'weekly_weather_event.dart';
part 'weekly_weather_state.dart';

class WeeklyWeatherBloc extends Bloc<WeeklyWeatherEvent, WeeklyWeatherState> {
  final WeeklyWeatherRepo repo;
  WeeklyWeatherBloc({required this.repo}) : super(WeeklyWeatherState(response: ApiResponse.loading())) {
    on<WeeklyWeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<FetchWeeklyWeather>((event, emit) async{
      await repo.GetWeeklyForeCast().then((value){
        emit(state.copyWith(response: ApiResponse.completed(value)));
      }).onError((error, stackTrace){
        emit(state.copyWith(response: ApiResponse.error(error.toString())));
      });
    });

  }
}
