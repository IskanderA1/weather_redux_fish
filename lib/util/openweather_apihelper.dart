import 'package:dio/dio.dart';
import 'package:weather_redux_fish/models/darksky_weather_model.dart';

const apiKey = '2e443cf7753349b195378473e6668eaf';
const mainUrl = 'https://api.openweathermap.org/data/2.5/weather';

class OpenWeatherApiHelper {
  static Future<WeatherModel> getWeatherLatLon(
      double latitude, double longitude) async {
    Dio _dio = Dio();
    if (latitude != 0 && longitude != 0) {
      try {
        print(mainUrl +
            "?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric");
        Response response = await _dio.post(mainUrl +
            "?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric");
        //var data = jsonDecode(response.data);
        print(response.data);
        //print(jsonEncode(data));
        return WeatherModel.fromJson(response.data);
      } catch (error, stacktrace) {
        print("Exception occured: $error stackTrace: $stacktrace");
        return WeatherModel.withError("Нет сети");
      }
    } else {
      return WeatherModel.withError("Включи локацию");
    }
  }
}
