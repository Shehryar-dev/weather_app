import 'package:jiffy/jiffy.dart';

extension ConvertTimestampToTime on int {
  String get time =>
      Jiffy.parseFromMillisecondsSinceEpoch(this * 1000).format(pattern: 'H:mm a');

  String get dateTime => Jiffy.parseFromMillisecondsSinceEpoch(this * 1000)
      .format(pattern: 'yMMMMd');
}
