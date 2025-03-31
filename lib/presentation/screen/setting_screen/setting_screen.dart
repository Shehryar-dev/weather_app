import 'package:weather_app/core/constants/screen_path.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GradientContainer(
        sunEnabled: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: DSize.spacerBtwSections * 2,),
              Text('Settings', style: TextStyles.h0,),
              SizedBox(height: DSize.spaceBtwItems,),

              _buildSettingItem(
                title: 'Temperature Unit',
                subtitle: 'Choose Celsius or Fahrenheit',
                icon: Icons.thermostat,
                onTap: () {
                  // TODO: Show Unit Selection Dialog
                },
              ),

              SizedBox(height: DSize.spaceBtwItems,),
              _buildSettingItem(
                title: 'Wind Speed Unit',
                subtitle: 'Choose km/h or mph',
                icon: Icons.air,
                onTap: () {
                  // TODO: Show Wind Speed Selection
                },
              ),

              SizedBox(height: DSize.spaceBtwItems,),
              _buildSettingItem(
                title: 'Theme Mode',
                subtitle: 'Light / Dark Mode',
                icon: Icons.brightness_6,
                onTap: () {
                  // TODO: Show Theme Selection
                },
              ),

              SizedBox(height: DSize.spaceBtwItems,),
              _buildSettingItem(
                title: 'Weather Notifications',
                subtitle: 'Enable weather alerts',
                icon: Icons.notifications_active,
                onTap: () {
                  // TODO: Toggle Notifications
                },
              ),

              SizedBox(height: DSize.spaceBtwItems,),
              _buildSettingItem(
                title: 'Location Access',
                subtitle: 'Enable GPS for auto location',
                icon: Icons.location_on,
                onTap: () {
                  // TODO: Toggle GPS Access
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 28),
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey)),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: onTap,
    );
  }
}

