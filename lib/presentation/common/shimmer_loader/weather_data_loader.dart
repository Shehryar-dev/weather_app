
import 'package:weather_app/core/constants/screen_path.dart';

class HomeScreenLoader extends StatelessWidget {
  const HomeScreenLoader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return GradientContainer(children: [
      Column(
        children: [
          SizedBox(height: DSize.spaceBtwItems * 3,),
          ShimmerLoader(width: 170, height: 22),
          SizedBox(height: DSize.spaceBtwItems ,),
          ShimmerLoader(width: 130, height: 22),
          SizedBox(height: DSize.spacerBtwSections ,),
          ShimmerLoader(width: 280, height: 280,radius: 200,),
          SizedBox(height: DSize.spacerBtwSections ,),
          ShimmerLoader(width: 200, height: 22),
        ],

      ),
      SizedBox(height: DSize.spacerBtwSections + 4 ,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerLoader(width: 100, height: 70),
          ShimmerLoader(width: 100, height: 70),
          ShimmerLoader(width: 100, height: 70)
        ],
      ),

      SizedBox(height: DSize.spacerBtwSections + 4 ,),
      ReusableRow(title: 'Today', value: 'View All'),
      SizedBox(height: DSize.spaceBtwItems / 2.4,),
      SizedBox(
        height: 120,
        child: ListView.builder(itemBuilder: (context, index){
          return MiniLoaderBox();
        }, itemCount: 6, scrollDirection: Axis.horizontal,shrinkWrap: true,),
      )
    ]);
  }
}
