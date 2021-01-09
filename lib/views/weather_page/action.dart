import 'package:fish_redux/fish_redux.dart';
import 'package:weather_redux_fish/models/darksky_weather_model.dart';

enum WeatherAction {  
  action,
  setLocation,
  setWeather,
  isTodaychanged,
}

class WeatherActionCreator {
    static Action onAction() {
    return const Action(WeatherAction.action);
  }

  static Action isTodaychanged(bool b) {
    return Action(WeatherAction.isTodaychanged, payload: b);
  }

  static Action setLocation(String country, String city) {
    return Action(WeatherAction.setLocation, payload: [country, city]);
  }

  static Action setWeather(WeatherModel d) {
    return Action(WeatherAction.setWeather, payload: d);
  }


}
