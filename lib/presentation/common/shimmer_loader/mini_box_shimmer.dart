import 'package:weather_app/core/constants/screen_path.dart';

class MiniLoaderBox extends StatelessWidget {
  const MiniLoaderBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DSize.defaultSpace),
      child: SizedBox(
        height: 120,
        child:Column(
          children: [
            ShimmerLoader(width: 120, height: 70, radius: DSize.borderRadiuslLg,)
          ],
        ) ,
      ),
    );
  }
}
