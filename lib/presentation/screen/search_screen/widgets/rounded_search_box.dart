
import 'package:weather_app/core/constants/screen_path.dart';

class RoundedSearchBox extends StatelessWidget {
  const RoundedSearchBox({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: DSize.inputBoxSize,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSize.borderRadiuslLg),
          color: AppColors.accentBlue),
      child: TextFormField(
        controller: controller,
        style: TextStyles.subtitleText
            .apply(color: AppColors.white, decoration: TextDecoration.none),
        decoration: InputDecoration(
            fillColor: AppColors.white,
            border: InputBorder.none,
            focusColor: AppColors.white,
            hintText: TextString.searchViewTextBox,
            prefixIcon: Icon(Iconsax.search_normal),
            contentPadding:
            EdgeInsets.only(left: DSize.sm + 4, top: DSize.sm + 5)),
      ),
    );
  }
}
