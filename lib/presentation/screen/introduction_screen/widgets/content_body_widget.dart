import 'package:weather_app/core/constants/screen_path.dart';

class ContentBody extends StatelessWidget {
  const ContentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: DSize.defaultSpace * 2),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(DSize.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: DSize.spacerBtwSections * 2),
                Text(
                  TextString.appTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.apply(
                    fontFamily: TextString.fontLita,

                    color: HelperFunctions.isDarkMode(context)
                        ? AppColors.white
                        : AppColors.white,
                  ),
                ),
                const SizedBox(height: DSize.spaceBtwItems),
                Text(
                  TextString.introductionDescription,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(fontFamily: TextString.fontExRegular, color: Colors.grey),
                ),
                const SizedBox(height: DSize.spacerBtwSections),
                Image(
                  image: AssetImage(ImageString.boy),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
                const SizedBox(height: DSize.spacerBtwSections),
                StartBtnWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
