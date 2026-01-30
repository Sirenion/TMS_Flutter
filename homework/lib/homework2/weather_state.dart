part of 'weather_bloc.dart';

class WeatherState extends Equatable {
  final WeatherMainResponse? weather;
  final bool isLoading;

  final String? errorText;

  const WeatherState({this.weather, this.isLoading = false, this.errorText});

  @override
  List<Object?> get props => [weather, isLoading, errorText];
}
