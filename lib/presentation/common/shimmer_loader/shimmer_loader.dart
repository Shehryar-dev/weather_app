
import 'package:weather_app/core/constants/screen_path.dart';

class ShimmerLoader extends StatelessWidget {
  const ShimmerLoader(
      {super.key,
        required this.width,
        required this.height,
        this.radius = 15,
        this.color,
        this.baseColor,
        this.highlightColor});
  final double width, height, radius;

  final Color? color, baseColor, highlightColor;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: baseColor ?? (dark ? Colors.grey[850]! : Colors.grey[300]!),
      highlightColor:
      highlightColor ?? (dark ? Colors.grey[700]! : Colors.grey[100]!),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? AppColors.darkerGrey : AppColors.white),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}