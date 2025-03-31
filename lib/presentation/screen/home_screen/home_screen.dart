import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CurrentWeatherBloc _bloc;

  @override
  void initState() {
    _bloc = CurrentWeatherBloc(repo: getIT());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: AppColors.secondaryBlack,
        body: BlocProvider(
          create: (context) => _bloc
            ..add(
              FetchCurrentWeather(),
            ),
          child: BlocBuilder<CurrentWeatherBloc, CurrentWeatherState>(
            buildWhen: (c, p) => c.response != p.response,
            builder: (context, state) {
              final weatherData = state.response.data;
              switch (state.response.status) {
                case Status.loading:
                  return HomeScreenLoader();
                case Status.completed:
                  return _gradientContainer(weatherData);
                case Status.error:
                  return Center(
                    child: Text('Server No Response'),
                  );
                default:
                  return ResponseErrorWidget();
              }
            },
          ),
        ));
  }

  GradientContainer _gradientContainer(Weather? weatherData) {
    return GradientContainer(
                  children: [
                    MainSectionWidget(weatherData: weatherData),
                    SizedBox(height: DSize.spacerBtwSections,),
                    WeatherInfoRow(weather: weatherData),
                    SizedBox(height: DSize.spacerBtwSections + 4,),
                    ReusableRow(title: 'Today', value: 'View All'),
                    SizedBox(height: DSize.spaceBtwItems / 2.4,),
                    HourlyWeatherView()
                  ],
                );
  }
}

