import 'package:weather_app/core/constants/screen_path.dart';

class WeeklyWeatherRepo {
  final ApiHelper _helper = ApiHelper();

  Future<WeeklyWeather> GetWeeklyForeCast() async {
    await ApiHelper.fetchLocation();
    final url = ApiHelper.constructWeeklyForecastUrl();
    final response = await _helper.fetchApiData(url);
    return WeeklyWeather.fromJson(response);
  }

}