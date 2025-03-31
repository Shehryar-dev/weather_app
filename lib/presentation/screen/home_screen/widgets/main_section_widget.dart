import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

class MainSectionWidget extends StatelessWidget {
  const MainSectionWidget({
    super.key,
    required this.weatherData,
  });

  final Weather? weatherData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:DSize.spacerBtwSections + 20,
        ),
        Text(
          weatherData!.name,
          style: TextStyles.h1,
        ),
        SizedBox(
          height: DSize.spaceBtwItems,
        ),

        Text(
          DateTime.now().dateTime,
          style: TextStyles.subtitleText,
        ),
        SizedBox(
          height: DSize.spaceBtwItems,
        ),
        SizedBox(
          height: 260,
          child: Image.asset('assets/icons/${weatherData!.weather[0].icon.replaceAll('n', 'd')}.png'),
        ),
        SizedBox(
          height: DSize.spacerBtwSections,
        ),
        Text(weatherData!.weather[0].description, style: TextStyles.h3,),
      ],
    );
  }
}