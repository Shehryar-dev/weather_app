part of 'current_weather_bloc.dart';


class CurrentWeatherState extends Equatable{
  final ApiResponse<Weather> response;

   const CurrentWeatherState({required this.response});

  CurrentWeatherState copyWith({ApiResponse<Weather>? response}) => CurrentWeatherState(response: response ?? this.response);

  @override
  // TODO: implement props
  List<Object?> get props => [response];
}