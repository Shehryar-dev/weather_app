import 'package:weather_app/core/constants/screen_path.dart';

class WeeklyForecastView extends StatefulWidget {
  const WeeklyForecastView({super.key});

  @override
  State<WeeklyForecastView> createState() => _WeeklyForecastViewState();
}

class _WeeklyForecastViewState extends State<WeeklyForecastView> {
  late WeeklyWeatherBloc _bloc;

  @override
  void initState() {
    _bloc = WeeklyWeatherBloc(repo: getIT());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc..add(FetchWeeklyWeather()),
      child: BlocBuilder<WeeklyWeatherBloc, WeeklyWeatherState>(
          builder: (context, state){
             final data = state.response.data;
             switch(state.response.status){
               case Status.loading :
                 return LoaderTile();

               case Status.completed :
                 return _successWidget(data);


               case Status.error :
                 return LoaderTile();

               default:
                 return ResponseErrorWidget();
             }
          }
      ),
    );
  }

  ListView _successWidget(WeeklyWeather? data) {
    return ListView.separated(
                 itemCount: data!.daily.weatherCode.length,
                 physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context, index){
                   final dayOfWeek = DateTime.parse(data.daily.time[index]).dayOfWeek.toString();
                   final date = data.daily.time[index].toString();
                   final temp = data.daily.temperature2mMax[index].toString();
                   final icon = data.daily.weatherCode[index];
                   return WeeklyForecastTile(day: dayOfWeek, date: date, icon: getWeatherIcon2(icon), temp: temp);
                 },
                 separatorBuilder: (context, index){
                   return SizedBox(height: DSize.spaceBtwItems,);

                 },
                 shrinkWrap: true,
               );
  }
}




