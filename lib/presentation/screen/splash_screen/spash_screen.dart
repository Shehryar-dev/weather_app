import 'package:weather_app/core/constants/screen_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 13), () {
      Navigator.pushNamedAndRemoveUntil(context, RoutesNames.introScreen, (route)=>false);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();  // 🔥 Cancel timer to avoid test failure
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: WrapperScene(
              colors: AppColors.gradientColorList,
              children: [
                SunWidget(),
                SnowflakeWidget(),
              ],
            ),
          ),
          SplashTextAnimation()
        ],
      ),
    );
  }
}

