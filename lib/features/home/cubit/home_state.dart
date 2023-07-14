part of 'home_cubit.dart';

class HomeState {
  HomeState({
    this.status = Status.initial,
    this.errorMessage,
    this.model,
  });

  final Status status;
  final String? errorMessage;
  final WeatherModel? model;
}
