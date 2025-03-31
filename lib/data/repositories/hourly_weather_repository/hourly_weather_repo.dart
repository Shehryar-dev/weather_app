
import '../../../core/constants/screen_path.dart';

class HourlyWeatherRepo{

  final ApiHelper _helper = ApiHelper();

  Future<HourlyWeather> GetHourlyForeCast() async {
    await ApiHelper.fetchLocation();
    final url = ApiHelper.constructForecastUrl();
    final response = await _helper.fetchApiData(url);
    return HourlyWeather.fromJson(response);
  }
}