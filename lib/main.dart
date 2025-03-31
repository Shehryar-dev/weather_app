import 'package:device_preview/device_preview.dart';
import 'package:weather_app/core/constants/screen_path.dart';

void main() {
  serviceLocator();
  if (kIsWeb || (!kIsWeb && !Platform.isAndroid)) {
    runApp(DevicePreview(builder: (context) => MyApp()));
  } else {
    runApp(MyApp());
  }
}

