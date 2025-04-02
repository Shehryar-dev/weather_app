import 'package:weather_app/core/constants/screen_path.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextString.appTitle,
      theme: ThemeData.light(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      initialRoute: RoutesNames.splashScreen,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
