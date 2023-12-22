import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/domain/entities/weather.dart';

import '../../helper/json_reader.dart';

void main() {
  setUp(() {});


  const tWeatherModel = WeatherModel(
    cityName: 'New York',
    main: 'Clear',
    description: 'clear sky',
    iconCode: '01d',
    temperature: 271.71,
    pressure: 1033,
    humidity: 56,
  );

  test('should be a subclass of WeatherEntity entity', () async {
// arrange
// act
// assert
    expect(tWeatherModel, isA<WeatherEntity>());
  });

  test('should return valid model from json', () async {
// arrange
    final Map<String, dynamic> jsonMap = json.decode(
      readJson('helper\\dummy_data\\dummy_weather_response.json'),
    );
    print(jsonMap); // to see the jsonMap
// act
    final result = WeatherModel.fromJson(jsonMap);
// assert
    expect(result, tWeatherModel);
  });



}