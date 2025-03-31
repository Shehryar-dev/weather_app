import 'package:weather_app/core/constants/screen_path.dart';

class WeatherDetailedScreen extends StatefulWidget {
  const WeatherDetailedScreen({super.key, required this.cityName});

  final String cityName;

  @override
  State<WeatherDetailedScreen> createState() => _WeatherDetailedScreenState();
}

class _WeatherDetailedScreenState extends State<WeatherDetailedScreen> {
  late CityNameBloc _bloc;

  @override
  void initState() {
    _bloc = CityNameBloc(repo: getIT(), cityName: widget.cityName);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc..add(FetchCityName(cityName: widget.cityName)),
      child: Scaffold(
        body:BlocBuilder<CityNameBloc, CityNameState>(
          builder: (context, state) {
            final data = state.response.data;
            switch(state.response.status){
              case Status.loading:
                return DetailScreenLoader();

              case Status.completed:
                return GradientContainer(
                  sunEnabled: true,
                    children: [
                  WeatherContentBody(data: data)
                ]);

              case Status.error :
                return Center(child: CircularProgressIndicator(color: Colors.red,),);

              default:
                return Center(child: Text('Error Found'),);
            }
          },
        ),
      ),
    );
  }
}
