
import 'package:weather_app/core/constants/screen_path.dart';

class LocationIconWidget extends StatelessWidget {
  const LocationIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.accentBlue,
          borderRadius: BorderRadius.circular(DSize.borderRadiuslLg)),
      child: Icon(Iconsax.location),
    );
  }
}
