import 'dart:convert' show json;

class WeatherModel {
  String weather;
  String weatherIcon;
  String weatherMessage;
  int temputure;
  String cityName;
  String country;

  WeatherModel.fromJson(data) {
    weather = data["weather"][0]['main'];
    var temp = data['main']['temp'];
    temputure = temp.toInt();
    cityName = data['name'];
    weatherIcon = getWeatherIcon(data['weather'][0]['id']);
    weatherMessage = getMessage(temputure);
    country = data['sys']['country'];
  }
  WeatherModel.withError(String message)
      : temputure = 0,
        weatherIcon = '...',
        weatherMessage = message,
        cityName = '...',
        country = '...';

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Ща бы 🍺 холодненького';
    } else if (temp > 20) {
      return 'Жирки растрясти самое то';
    } else if (temp < -10) {
      return 'ААААА, Шооо так холодно';
    } else {
      return 'Шото прохладно';
    }
  }
}
