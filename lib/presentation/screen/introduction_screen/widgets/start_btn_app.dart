import 'package:weather_app/core/constants/screen_path.dart';

class StartBtnWidget extends StatelessWidget {
  const StartBtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, RoutesNames.bottomNavScreen, (route)=>false);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.accentBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
      child: Text(
        TextString.introductionBtn,
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .apply(fontFamily: TextString.fontExRegular, color: AppColors.white),
      ),
    );
  }
}
