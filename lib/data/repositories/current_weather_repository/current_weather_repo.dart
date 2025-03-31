import 'package:weather_app/data/models/weather.dart';
import '../../../core/constants/screen_path.dart';

class CurrentWeatherRepo{

  final ApiHelper _helper = ApiHelper();

  Future<Weather> GetCurrentWeather() async{
    await  ApiHelper.fetchLocation();
    final url = ApiHelper.constructWeatherUrl();
    final response = await _helper.fetchApiData(url);
    return   Weather.fromJson(response);
  }
}