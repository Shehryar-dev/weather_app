
import 'package:weather_app/core/constants/screen_path.dart';


class LoaderBox extends StatelessWidget {
  const LoaderBox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ShimmerLoader(width: double.infinity, height: double.infinity, radius: DSize.borderRadiuslLg,),
    );
  }
}
