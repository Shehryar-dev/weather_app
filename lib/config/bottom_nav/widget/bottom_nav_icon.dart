import 'package:flutter/cupertino.dart';
import 'package:weather_app/core/constants/screen_path.dart';

class BottomNav {
  final _destinations = const [
    NavItem(iconData1: CupertinoIcons.home, iconData2: Iconsax.home5),
    NavItem(
        iconData1: Iconsax.global_search, iconData2: Iconsax.global_search5),
    NavItem(
        iconData1: CupertinoIcons.sun_max,
        iconData2: CupertinoIcons.sun_max_fill),
    NavItem(iconData1: Iconsax.setting, iconData2: Iconsax.setting5),
  ];

  List<NavigationDestination> get navigationDestinations => _destinations
      .map((item) => NavigationDestination(
            icon: Icon(item.iconData1, color: AppColors.grey),
            selectedIcon: Icon(item.iconData2, color: AppColors.white),
            label: '',
          ))
      .toList();
}
