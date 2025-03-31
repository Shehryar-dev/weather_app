import 'package:weather_app/core/constants/screen_path.dart';

GetIt getIT = GetIt.instance;

void serviceLocator(){
  getIT.registerLazySingleton<CurrentWeatherRepo>(()=> CurrentWeatherRepo());
  getIT.registerLazySingleton<HourlyWeatherRepo>(()=> HourlyWeatherRepo());
  getIT.registerLazySingleton<WeatherCityRepo>(()=> WeatherCityRepo());
  getIT.registerLazySingleton<WeeklyWeatherRepo>(()=> WeeklyWeatherRepo());
  // getIT.registerLazySingleton<WeatherCityRepo>(()=> WeatherCityRepo());

}