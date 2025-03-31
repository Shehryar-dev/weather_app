import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

class WeatherInfoRow extends StatelessWidget {
  const WeatherInfoRow({super.key, required this.weather});
  final Weather? weather;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WeatherInfoTile(title: 'Temp', value: '${weather!.main.temp}°'),
        WeatherInfoTile(title: 'Wind', value: '${weather!.wind.speed.kmh} km/h'),
        WeatherInfoTile(title: 'Humidity', value: '${weather!.main.humidity}%'),
      ],
    );
  }
}


