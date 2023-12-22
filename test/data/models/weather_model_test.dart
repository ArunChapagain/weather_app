import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/domain/entities/weather.dart';

void main() {

  setUp(() {


  });

  const tWeatherModel = WeatherModel(
    cityName: 'London',
    main: 'Clouds',
    description: 'scattered clouds',
    iconCode: '03d',
    temperature: 280.32,
    pressure: 1012,
    humidity: 81,
  );

test('should be a subclass of WeatherEntity entity',
() async {
// arrange
// act
// assert
expect(tWeatherModel, isA<WeatherEntity>());
  });


}
