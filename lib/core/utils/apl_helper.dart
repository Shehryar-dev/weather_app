import "package:weather_app/core/constants/screen_path.dart";
import "package:weather_app/data/models/weather.dart";


class ApiHelper {
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const weeklyWeatherUrl =
      'https://api.open-meteo.com/v1/forecast?current=&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=auto';

  final _apiService = NetworkApiService();

  static double lat = 0.0;
  static double lon = 0.0;

  static final dio = Dio();

  static Future<void> fetchLocation() async {
    final location = await GeolocatorService.getLocator();
    lat = location.latitude;
    lon = location.longitude;
  }

  //! Build urls
  static String constructWeatherUrl() =>
      '$baseUrl/weather?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  static String constructForecastUrl() =>
      '$baseUrl/forecast?lat=$lat&lon=$lon&units=metric&appid=${Constants.apiKey}';

  static String constructWeatherByCityUrl(String cityName) =>
      '$baseUrl/weather?q=$cityName&units=metric&appid=${Constants.apiKey}';

  static String constructWeeklyForecastUrl() =>
      '$weeklyWeatherUrl&latitude=$lat&longitude=$lon';

  Future<Map<String, dynamic>> fetchApiData(String url) async {
    try {
      final response = await _apiService.getApi(url);
      return response;
    } catch (e) {
      printWarning('Error fetching data from $url: $e');
      throw Exception('Error fetching data');
    }
  }

  static Future<Map<String, dynamic>> fetchData(String url) async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        printWarning('Failed to load data: ${response.statusCode}');
        throw Exception('Failed to load data');
      }
    } catch (e) {
      printWarning('Error fetching data from $url: $e');
      throw Exception('Error fetching data');
    }
  }

  ///Current Weather
  static Future<Weather> getCurrentWeather() async {
    await fetchLocation();
    final url = constructWeatherUrl();
    final response = await fetchData(url);
    return Weather.fromJson(response);
  }

  ///Current Weather
  static Future<HourlyWeather> getHourlyForeCast() async {
    await fetchLocation();
    final url = constructForecastUrl();
    final response = await fetchData(url);
    return HourlyWeather.fromJson(response);
  }

  ///Weekly Forecast
  static Future<WeeklyWeather> getWeeklyForeCast() async {
    await fetchLocation();
    final url = constructWeeklyForecastUrl();
    final response = await fetchData(url);
    return WeeklyWeather.fromJson(response);
  }

  ///get weather location city name
  static Future<Weather> getWeatherByCityName(
      {required String cityName}) async {
    final url = constructWeatherByCityUrl(cityName);
    final response = await fetchData(url);
    return Weather.fromJson(response);
  }

  ///clean service
  ///Current Weather

  ///Current Weather


  ///Weekly Forecast


  ///get weather location city name

}
