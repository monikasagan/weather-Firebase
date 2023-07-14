part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.status = Status.initial,
    this.errorMessage,
    this.weatherModel,
  });

  final Status status;
  final String? errorMessage;
  final WeatherModel? weatherModel;
}
