import 'package:weather/data/remote/weather_remote_data_source.dart';
import 'package:weather/domain/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository({required this.weatherRemoteDataSource});

  final WeatherRemoteDataSource weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await weatherRemoteDataSource.getWeatherData(
      city: city,
    );
    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
