import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:weather_redux_fish/models/darksky_weather_model.dart';

class WeatherState implements Cloneable<WeatherState> {
  //AnimationController animationController;
  WeatherModel weather;
  String city;
  String country;
  
  @override
  WeatherState clone() {
    return WeatherState();
  }
}

WeatherState initState(Map<String, dynamic> args) {
  return WeatherState();
}
