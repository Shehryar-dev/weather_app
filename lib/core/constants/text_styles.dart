import 'package:weather_app/core/constants/screen_path.dart';



@immutable
class TextStyles {
  static const h0 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: TextString.fontLita,
  );

  static const h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: TextString.fontLita,
  );

  static const h2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: TextString.fontLita,
  );

  static const h3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
    fontFamily: TextString.fontExBold,

  );

  static const subtitleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: TextString.fontExRegular,

  );

  static const largeSubtitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: Colors.white70,
    fontFamily: TextString.fontExMedium,
  );
}
