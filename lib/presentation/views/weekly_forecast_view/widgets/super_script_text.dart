import 'package:weather_app/core/constants/screen_path.dart';

class SuperScriptText extends StatelessWidget {
  const SuperScriptText({super.key, required this.text, required this.superText});
  final String text;
  final String superText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyles.h0.apply(fontFamily: TextString.fontExRegular, color: Colors.white),),
        Text(superText, style: TextStyles.largeSubtitle.apply(fontFamily: TextString.fontExMedium,color: AppColors.grey),),

      ],
    );
  }
}
