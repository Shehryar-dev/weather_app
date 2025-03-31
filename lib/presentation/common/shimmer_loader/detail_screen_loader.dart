import 'package:weather_app/core/constants/screen_path.dart';

class DetailScreenLoader extends StatelessWidget {
  const DetailScreenLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GradientContainer(children: [
      Column(
        children: [
          SizedBox(
            height: DSize.spacerBtwSections * 3,
          ),
          ShimmerLoader(width: 170, height: 22),
          SizedBox(
            height: DSize.spaceBtwItems * 2,
          ),
          ShimmerLoader(width: 130, height: 22),
          SizedBox(
            height: DSize.spacerBtwSections  + 20,
          ),
          ShimmerLoader(
            width: 280,
            height: 280,
            radius: 200,
          ),
          SizedBox(
            height: DSize.spacerBtwSections + 20,
          ),
          ShimmerLoader(width: 200, height: 22),
        ],
      ),
      SizedBox(
        height: DSize.spacerBtwSections + 4,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerLoader(width: 100, height: 70),
          ShimmerLoader(width: 100, height: 70),
          ShimmerLoader(width: 100, height: 70)
        ],
      ),
    ]);
  }
}
