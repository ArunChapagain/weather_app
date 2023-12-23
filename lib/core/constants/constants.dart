class Url {
  static const String baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';
  static const String apikey = 'cc95d932d5a45d33a9527d5019475f2c';
  static String currentWeatherByCityName(String cityName) =>
      '$baseUrl?q=$cityName&appid=$apikey';
  static String weatherIcon(String iconCode) =>
      'http://openweathermap.org/img/wn/$iconCode@2x.png';
}
