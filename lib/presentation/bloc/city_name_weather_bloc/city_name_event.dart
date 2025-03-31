part of 'city_name_bloc.dart';

class CityNameEvent extends Equatable{
  const CityNameEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FetchCityName extends CityNameEvent{
  final String cityName;
  const FetchCityName({required this.cityName});

  @override
  // TODO: implement props
  List<Object?> get props => [cityName];
}