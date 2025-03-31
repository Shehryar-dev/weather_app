part of 'hourly_weather_bloc.dart';

class HourlyWeatherState extends Equatable {
  final ApiResponse<HourlyWeather> response;
  const HourlyWeatherState({required this.response});

  HourlyWeatherState copyWith({ApiResponse<HourlyWeather>? response}) => HourlyWeatherState(response: response ?? this.response);

  @override
  // TODO: implement props
  List<Object?> get props => [response];
}
