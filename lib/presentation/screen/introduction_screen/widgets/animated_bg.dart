import 'package:weather_app/core/constants/screen_path.dart';

class AnimatedBgWidget extends StatelessWidget {
  const AnimatedBgWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: WrapperScene(
        colors: AppColors.gradientColorList,
        children: [
          SunWidget(),
          SnowflakeWidget(),
          WindWidget(),
          RainDropWidget()
          // RainWidget(),
          // SnowWidget()
        ],
      ),
    );
  }
}
