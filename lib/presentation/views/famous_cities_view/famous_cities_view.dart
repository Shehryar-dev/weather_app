import 'package:weather_app/core/constants/screen_path.dart';

class FamousCitiesView extends StatelessWidget {
  const FamousCitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: DummyData.famousCities.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: DSize.lg,
            mainAxisSpacing: DSize.lg,
            crossAxisCount: 2),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          final city = DummyData.famousCities[index];
          return InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherDetailedScreen(cityName:city.name))),
              child: FamousCityTile(city: city, index: index));
        });
  }
}


