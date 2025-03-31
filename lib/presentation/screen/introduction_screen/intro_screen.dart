import '../../../core/constants/screen_path.dart';
class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBgWidget(),
          ContentBody(),
        ],
      ),
    );
  }
}


