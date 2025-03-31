
import 'package:weather_app/core/constants/screen_path.dart';

class LoaderTile extends StatelessWidget {
  const LoaderTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return SizedBox(
            width: double.infinity,
            height: 80,
            child: Column(
              children: [
                ShimmerLoader(width: double.infinity, height: 80)
              ],
            ),
          );
        },
        separatorBuilder: (context, index){
          return SizedBox(height: DSize.spaceBtwItems ,);
        },
        itemCount: 7);
  }
}