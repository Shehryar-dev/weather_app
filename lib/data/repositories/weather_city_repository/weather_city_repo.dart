import 'package:weather_app/data/models/weather.dart';
import '../../../core/constants/screen_path.dart';

class WeatherCityRepo{
  final ApiHelper _helper = ApiHelper();

  Future<Weather> GetWeatherByCityName({required String cityName}) async {
    final url = ApiHelper.constructWeatherByCityUrl(cityName);
    final response = await _helper.fetchApiData(url);
    return Weather.fromJson(response);
  }

}