import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String cityName);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
final http.Client client;

  WeatherRemoteDataSourceImpl({required this.client});


  @override
  Future<WeatherModel> getCurrentWeather(String cityName) {
throw UnimplementedError();
  }
}
