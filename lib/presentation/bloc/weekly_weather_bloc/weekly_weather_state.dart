part of 'weekly_weather_bloc.dart';

class WeeklyWeatherState extends Equatable{
  final ApiResponse<WeeklyWeather> response;
  const WeeklyWeatherState({required this.response});

  WeeklyWeatherState copyWith({ApiResponse<WeeklyWeather>? response}) => WeeklyWeatherState(response: response ?? this.response);

  @override
  // TODO: implement props
  List<Object?> get props => [response];
}