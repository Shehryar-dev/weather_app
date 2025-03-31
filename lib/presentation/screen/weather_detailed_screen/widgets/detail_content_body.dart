import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

class WeatherContentBody extends StatelessWidget {
  const WeatherContentBody({
    super.key,
    required this.data,
  });

  final Weather? data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: DSize.spacerBtwSections * 3,),
        Text(data!.name, style: TextStyles.h1,),
        SizedBox(height: DSize.spaceBtwItems,),
        Text(DateTime.now().dateTime, style: TextStyles.subtitleText,),
        SizedBox(height: DSize.spacerBtwSections,),
        SizedBox(
          height: 300,
          child: Image.asset('assets/icons/${data!.weather[0].icon.replaceAll('n', 'd')}.png', fit: BoxFit.contain,),
        ),
        SizedBox(height: DSize.spacerBtwSections,),
        Text(data!.weather[0].description, style: TextStyles.largeSubtitle.apply(color: Colors.white),),
        SizedBox(height: DSize.spacerBtwSections,),
        WeatherInfoRow(weather: data)
      ],
    );
  }
}
