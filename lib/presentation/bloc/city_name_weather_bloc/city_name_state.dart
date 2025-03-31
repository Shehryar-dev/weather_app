part of 'city_name_bloc.dart';


class CityNameState extends Equatable{
  final ApiResponse<Weather> response;
  const CityNameState({required this.response});

  CityNameState copyWith({ApiResponse<Weather>? response}) => CityNameState(response: response ?? this.response);


  @override
  // TODO: implement props
  List<Object?> get props => [response];
}
