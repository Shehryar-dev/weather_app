
import 'package:weather_app/core/constants/screen_path.dart';

class SearchScreenHeader extends StatelessWidget {
  const SearchScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: DSize.spacerBtwSections + 20,
        ),
        Text(
          TextString.searchViewTitle,
          style: TextStyles.h0,
        ),
        SizedBox(
          height: DSize.spaceBtwItems,
        ),
        Text(
          TextString.searchViewDesc,
          textAlign: TextAlign.center,
          style: TextStyles.subtitleText,
        ),
        SizedBox(
          height: DSize.spacerBtwSections,
        ),
      ],
    );
  }
}
