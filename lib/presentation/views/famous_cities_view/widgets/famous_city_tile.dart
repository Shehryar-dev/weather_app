import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/data/models/weather.dart';

class FamousCityTile extends StatefulWidget {
  const FamousCityTile({super.key, required this.city, required this.index});
  final FamousCities city;
  final int index;

  @override
  State<FamousCityTile> createState() => _FamousCityTileState();
}

class _FamousCityTileState extends State<FamousCityTile> {
  late CityNameBloc _bloc;
  @override
  void initState() {
    _bloc = CityNameBloc(repo: getIT(), cityName: widget.city.name);
    // TODO: implement initState
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> _bloc..add(FetchCityName(cityName: widget.city.name)),
      child: BlocBuilder<CityNameBloc, CityNameState>(
          buildWhen: (c, p)=> c.response != p.response,
          builder: (context, state){
            final data = state.response.data;
        switch(state.response.status){
          case Status.loading :
            return LoaderBox();

          case Status.completed :
            return _successWidget(data);


          case Status.error :
            return LoaderBox();
            // return Center(child: Text('Internet Exception'),);

          default:
            return Center(
              child: Text('Error Found'),
            );
        }
      }),
    );
  }

  Material _successWidget(Weather? data) {
    return Material(
            elevation: widget.index == 0 ? 8 : 0 ,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(DSize.borderRadiuslLg),
                  color: widget.index == 0 ? AppColors.lightBlue.withOpacity(.5) : AppColors.accentBlue.withOpacity(.5),
                  image: DecorationImage(image: AssetImage( widget.index == 0 ? ImageString.pattern1 : ImageString.pattern2)  ,fit: widget.index == 0 ? BoxFit.cover : BoxFit.fitHeight, opacity: widget.index == 0 ? 0.5 : 1)
              ),
              child: Padding(
                padding: EdgeInsets.all(DSize.defaultSpace / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${data!.main.temp.round()}°', style: TextStyles.h2,),
                                SizedBox(height: DSize.sm,),
                                Text(data.weather[0].description.capitalize , style: TextStyles.subtitleText,),
                                SizedBox(height: DSize.sm,),
                              ],
                            ),
                          ),
                          Image(image: AssetImage(getWeatherIcon(weatherCode: data.weather[0].id)),width: DSize.iconImageSize,)
                        ],
                      ),
                    ),
                    Text(data.name, style: TextStyles.largeSubtitle,)
                  ],
                ),
              ),
            ),
          );
  }
}
