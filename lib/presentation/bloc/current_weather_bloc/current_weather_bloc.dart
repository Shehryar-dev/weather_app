

import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

part 'current_weather_event.dart';
part 'current_weather_state.dart';

class CurrentWeatherBloc extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  final CurrentWeatherRepo repo;
  CurrentWeatherBloc({required this.repo}) : super(CurrentWeatherState(response: ApiResponse.loading())) {
    on<FetchCurrentWeather>((event, emit) async{
       await repo.GetCurrentWeather().then((value){
         emit(state.copyWith(response: ApiResponse.completed(value)));
       }).onError((error, stackTrace){
         if(kDebugMode){
           debugPrint('error: $error');
           debugPrint('stackTrace: $stackTrace');
         }
         emit(state.copyWith(response: ApiResponse.error(error.toString())));
       });
    });
  }
}
