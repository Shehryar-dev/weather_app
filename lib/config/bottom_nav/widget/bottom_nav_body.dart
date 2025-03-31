
import 'package:weather_app/core/constants/screen_path.dart';

class BottomNavBody extends StatelessWidget {
  const BottomNavBody({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNav bottomNav = BottomNav();
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      buildWhen: (c, p) => c.currentIndex != p.currentIndex,
      builder: (context, state) {
        return NavigationBar(
            backgroundColor: AppColors.secondaryBlack,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            indicatorColor: Colors.transparent,
            selectedIndex: state.currentIndex,
            onDestinationSelected: (val) {
              context.read<BottomNavBloc>().add(ChangeNavIndex(index: val));
            },
            destinations: bottomNav.navigationDestinations);
      },
    );
  }
}
