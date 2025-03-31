import 'package:weather_app/core/constants/screen_path.dart';
import 'package:weather_app/presentation/screen/forecast_screen/weekly_forecast_screen.dart';
import 'package:weather_app/presentation/screen/setting_screen/setting_screen.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  late BottomNavBloc _bloc;
  @override
  void initState() {
    _bloc = BottomNavBloc();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('screen rebuild');
    return BlocProvider(
      create: (context) => _bloc,
      child: Scaffold(
        body: BlocBuilder<BottomNavBloc, BottomNavState>(
            buildWhen: (c, p) => c.currentIndex != p.currentIndex,
            builder: (context, state) {
              final screenList = [
                HomeScreen(),
                SearchScreen(),
                WeeklyForecastScreen(),
                SettingScreen()
              ];
              return screenList[state.currentIndex];
            }),
        bottomNavigationBar: ClipRRect(
            // borderRadius: BorderRadius.only(
            //     topRight: Radius.circular(DSize.borderRadiuslLg * 1.5),
            //     topLeft: Radius.circular(DSize.borderRadiuslLg * 1.5)),
            child: BottomNavBody()),
      ),
    );
  }
}


