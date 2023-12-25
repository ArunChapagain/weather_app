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
    mockWeatherRemoteDataSource = MockWeatherRemoteDataSource();
    weatherRepositoryImpl = WeatherRepositoryImpl(mockWeatherRemoteDataSource);
  });

  const tWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
  );

  const tWeatherEntity = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 1009,
    humidity: 70,
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
      final result = await weatherRepositoryImpl.getCurrentWeather(tCityName);

      print(result);

// assert

      expect(result, equals(const Right(tWeatherEntity)));
    });
  });
}
