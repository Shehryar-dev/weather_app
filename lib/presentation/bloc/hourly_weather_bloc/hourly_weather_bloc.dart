import 'package:weather_app/core/constants/screen_path.dart';

part 'hourly_weather_event.dart';
part 'hourly_weather_state.dart';

class HourlyWeatherBloc extends Bloc<HourlyWeatherEvent, HourlyWeatherState> {
  final HourlyWeatherRepo repo;

  HourlyWeatherBloc({required this.repo}) : super(HourlyWeatherState(response: ApiResponse.loading())) {
    on<HourlyWeatherEvent>((event, emit) {

    });
    on<FetchHourlyWeather>((event, emit) async{
      await repo.GetHourlyForeCast().then((value){
        emit(state.copyWith(response: ApiResponse.completed(value)));
      }).onError((error, stackTrace){
        emit(state.copyWith(response: ApiResponse.error(error.toString())));
      });
    });
  }
}
