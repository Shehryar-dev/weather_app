import 'package:weather_app/core/constants/screen_path.dart';

class WeatherInfoTile extends StatelessWidget {
  const WeatherInfoTile({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: AppColors.accentBlue,
      color: AppColors.secondaryBlack.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(DSize.defaultSpace / 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: TextStyles.subtitleText, textAlign: TextAlign.center,),
            SizedBox(height: DSize.spaceBtwItems / 2,),
            Text(value, style: TextStyles.h3, textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
