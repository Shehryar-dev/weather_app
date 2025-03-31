import 'package:weather_app/core/constants/screen_path.dart';

class WeeklyForecastScreen extends StatefulWidget {
  const WeeklyForecastScreen({super.key});

  @override
  State<WeeklyForecastScreen> createState() => _WeeklyForecastScreenState();
}

class _WeeklyForecastScreenState extends State<WeeklyForecastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
          sunEnabled: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: DSize.spacerBtwSections * 1.5,),
                Center(child: Text('Forecast Report',style: TextStyles.h1,)),
                SizedBox(height: DSize.spacerBtwSections,),
                ReusableRow(title: 'Today', value: DateTime.now().dateTime, isNavigate: false,showIcon: false,),
                SizedBox(height: DSize.spaceBtwItems,),
                HourlyWeatherView(),
                SizedBox(height: DSize.spaceBtwItems,),
              ],
            ),
            ReusableRow(title: 'Next Forecast', iconData: Iconsax.calendar, showIcon: true, isNavigate: false,),
            WeeklyForecastView()


      ]),
    );
  }
}
