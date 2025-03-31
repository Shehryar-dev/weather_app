import 'package:weather_app/core/constants/screen_path.dart';

class HourlyWeatherTile extends StatelessWidget {
  const HourlyWeatherTile({super.key, required this.id, required this.temp, required this.hour, required this.isActive});
  final int id, temp;
  final String hour;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(DSize.defaultSpace / 1.2),
      child: Material(
        color: isActive ? AppColors.lightBlue : AppColors.accentBlue,
        elevation: isActive ? 8 : 0,
        borderRadius: BorderRadius.circular(DSize.borderRadiuslLg),
        child: Padding(padding: EdgeInsets.all(DSize.defaultSpace / 3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                getWeatherIcon(weatherCode: id),
                width: 50,
              ),
              SizedBox(width: DSize.sm + 2,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(hour, style: TextStyles.subtitleText,),
                  SizedBox(height: DSize.sm ,),
                  Text('$temp°', style: TextStyles.h3,),

                ],
              )
            ],
          ),
        ) ,
      ),
    );
  }
}
