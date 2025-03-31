
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/constants/screen_path.dart';

class ResponseErrorWidget extends StatelessWidget {
  const ResponseErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 260,
        height: 260,
        child: Lottie.asset(ImageString.locationAnimation),
      ),
    );
  }
}
