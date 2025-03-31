import 'package:weather_app/core/constants/screen_path.dart';


class HourlyWeatherView extends StatefulWidget {
  const HourlyWeatherView({super.key});

  @override
  State<HourlyWeatherView> createState() => _HourlyWeatherViewState();
}

class _HourlyWeatherViewState extends State<HourlyWeatherView> {
  late HourlyWeatherBloc _bloc;
  @override
  void initState() {
    _bloc = HourlyWeatherBloc(repo: getIT());
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> _bloc..add(FetchHourlyWeather()),
      child: BlocBuilder<HourlyWeatherBloc, HourlyWeatherState>(
        buildWhen: (c, p) => c.response != p.response,
          builder: (context, state){
            switch(state.response.status){


              case Status.loading:
                return _loading();

              case Status.completed:
                return SizedBox(
                height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: state.response.data!.cnt,
                    itemBuilder: (context, index){
                        final hourlyWeather = state.response.data;
                        final data = hourlyWeather!.list[index];
                        return HourlyWeatherTile(id: data.weather[0].id ,hour: data.dt.time, isActive: index == 0, temp: data.main.temp.round(),);
                    },
                  ),
                );

                case Status.error:
                return MiniLoaderBox();
              default:
                return Center(
                  child: Text('error'),
                );
            }
          }
      ),
    );
  }

  SizedBox _loading() {
    return SizedBox(height: 120,
              child: ListView.separated(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return MiniLoaderBox();
                },
                separatorBuilder: (context, index){
                  return SizedBox(width: DSize.spaceBtwItems ,);
                },
              ),
              );
  }
}

