import 'package:weather_app/core/constants/screen_path.dart';

class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RoutesNames.splashScreen:
        return MaterialPageRoute(builder: (_)=> SplashScreen());

      case RoutesNames.introScreen:
        return MaterialPageRoute(builder: (_)=> IntroductionScreen());

      case RoutesNames.bottomNavScreen:
        return MaterialPageRoute(builder: (_)=> BottomNavWidget());

      case RoutesNames.homeScreen:
        return MaterialPageRoute(builder: (_)=> HomeScreen());

        default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(
          body: Center(
            child: Text('404\nPage Not Fount'),
          ),
        ));
    }
  }
}
