import 'package:weather_app/core/constants/screen_path.dart';

class WeeklyForecastTile extends StatelessWidget {
  const WeeklyForecastTile({super.key, required this.day, required this.date, required this.icon, required this.temp});
  final String day;
  final String date;
  final String icon;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all( DSize.defaultSpace / 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DSize.borderRadiuslLg),
        color: AppColors.accentBlue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(day.toString(), style: TextStyles.h3.apply(color: AppColors.white),),
              SizedBox(height: DSize.sm,),
              Text(date.toString(), style: TextStyles.subtitleText,),
            ],
          ),
          SuperScriptText(text: temp, superText: '°C'),

          SizedBox(
              width: 50,
              child: Image.asset(icon ,width: 50,))
        ],
      ),
    );
  }
}
