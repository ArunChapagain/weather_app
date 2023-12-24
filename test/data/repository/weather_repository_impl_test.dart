import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/repository/weather_repository_imp;.dart';
import 'package:weather_app/domain/entities/weather.dart';

import '../../helper/test_helper.mocks.dart';

void main() {
  late MockWeatherRemoteDataSource mockWeatherRemoteDataSource;
  late WeatherRepositoryImpl weatherRepositoryImpl;

  setUp(() {
    print('object');
    mockWeatherRemoteDataSource = MockWeatherRemoteDataSource();
    weatherRepositoryImpl = WeatherRepositoryImpl(mockWeatherRemoteDataSource);
  });

  const tWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clear',
    description: 'clear sky',
    iconCode: '01d',
    temperature: 271.71,
    pressure: 1033,
    humidity: 56,
  );

  const tWeather = WeatherEntity(
    cityName: 'New York',
    main: 'Clear',
    description: 'clear sky',
    iconCode: '01d',
    temperature: 271.71,
    pressure: 1033,
    humidity: 56,
  );

  const tCityName = 'New York';
  group('get current weather', () {
    test(
        'should return weather when the call to remote data source is successful',
        () async {
// arrange
      when(mockWeatherRemoteDataSource.getCurrentWeather(tCityName))
          .thenAnswer((_) async => tWeatherModel);

// act
      final result = weatherRepositoryImpl.getCurrentWeather(tCityName);
// assert

      expect(result, equals(const Right(tWeather)));
    });
  });
}
