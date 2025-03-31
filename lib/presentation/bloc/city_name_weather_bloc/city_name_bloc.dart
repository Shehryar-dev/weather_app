

import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

part 'city_name_event.dart';
part 'city_name_state.dart';

class CityNameBloc extends Bloc<CityNameEvent, CityNameState> {
  final WeatherCityRepo repo;
  final String cityName;

  CityNameBloc({required this.repo, required this.cityName}) : super(CityNameState(response: ApiResponse.loading())) {
    on<CityNameEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<FetchCityName>((event, emit) async{
      await repo.GetWeatherByCityName(cityName: cityName).then((value){
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
