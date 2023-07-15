import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=65dea1fe7d154fa8a02214852231407&q=$city&aqi=no');

      return response.data;
    } on DioException catch (exception) {
      throw Exception(
          exception.response?.data['error']['message'] ?? 'Unknown exception');
    }
  }
}
