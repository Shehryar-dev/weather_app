
import 'package:weather_app/core/constants/screen_path.dart';

class SplashTextAnimation extends StatelessWidget {
  const SplashTextAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        child: DefaultTextStyle(
          style: TextStyles.h0,
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(TextString.firstLine),
              TyperAnimatedText(TextString.secondLine),
              TyperAnimatedText(TextString.thirdLine),
              TyperAnimatedText(TextString.fourthLine),
            ],
          ),
        ),
      ),
    );
  }
}
