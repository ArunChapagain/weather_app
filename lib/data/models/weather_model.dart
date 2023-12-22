import 'package:weather_app/domain/entities/weather.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required String cityName,
    required String main,
    required String description,
    required String iconCode,
    required double temperature,
    required int pressure,
    required int humidity,
  }) : super(
          cityName: cityName,
          main: main,
          description: description,
          iconCode: iconCode,
          temperature: temperature,
          pressure: pressure,
          humidity: humidity,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> jsonMap) {
    return WeatherModel(
      cityName: jsonMap['name'],
      main: jsonMap['weather'][0]['main'],
      description: jsonMap['weather'][0]['description'],
      iconCode: jsonMap['weather'][0]['icon'],
      temperature: jsonMap['main']['temp'].toDouble(),
      pressure: jsonMap['main']['pressure'],
      humidity: jsonMap['main']['humidity'],
    );
  }
}
