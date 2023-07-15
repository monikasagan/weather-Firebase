class WeatherModel {
  const WeatherModel(
      {required this.temperature,
      required this.city,
      required this.country,
      required this.condition,
      required this.icon});

  final double temperature;
  final String city;
  final String country;
  final String condition;
  final String icon;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : temperature = json['current']['temp_c'] + 0.0,
        city = json['location']['name'],
        country = json['location']['country'],
        condition = json['current']['condition']['text'],
        icon = json['current']['condition']['icon'];
}
