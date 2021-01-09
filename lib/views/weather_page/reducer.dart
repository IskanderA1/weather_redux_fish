import 'package:fish_redux/fish_redux.dart';
import 'package:weather_redux_fish/models/darksky_weather_model.dart';

import 'action.dart';
import 'state.dart';

Reducer<WeatherState> buildReducer() {
  return asReducer(
    <Object, Reducer<WeatherState>>{
      WeatherAction.action: _onAction,
      WeatherAction.setLocation: _setLocation,
      WeatherAction.setWeather: _setWeather
    },
  );
}

WeatherState _onAction(WeatherState state, Action action) {
  final WeatherState newState = state.clone();
  return newState;
}




WeatherState _setLocation(WeatherState state, Action action) {
  final String country = action.payload[0] ?? 'unkown';
  final String city = action.payload[1] ?? 'unkown';
  final WeatherState newState = state.clone();
  newState.country = country;
  newState.city = city;
  return newState;
}

WeatherState _setWeather(WeatherState state, Action action) {
  final WeatherModel model = action.payload;
  final WeatherState newState = state.clone();
  newState.weather = model;
  return newState;
}


