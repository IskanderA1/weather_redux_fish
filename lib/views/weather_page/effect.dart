import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:geolocator/geolocator.dart';

import 'package:weather_redux_fish/util/openweather_apihelper.dart';
import 'action.dart';
import 'state.dart';

Effect<WeatherState> buildEffect() {
  return combineEffects(<Object, Effect<WeatherState>>{
    WeatherAction.action: _onAction,
    Lifecycle.initState: _onInit,
    Lifecycle.dispose: _onDispose,
    Lifecycle.build: _onBuild
  });
}

void _onAction(Action action, Context<WeatherState> ctx) {}

void _onBuild(Action action, Context<WeatherState> ctx) {}

void _onInit(Action action, Context<WeatherState> ctx) async {
  final Object ticker = ctx.stfState;
  // ctx.state.animationController =
  //     AnimationController(vsync: ticker, duration: Duration(milliseconds: 300));
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low);

  // if (location != null) print(location);
  // // ctx.dispatch(WeatherActionCreator.setLocation(
  // //     location.features[1].text, location.features[0].text));
  var q = await OpenWeatherApiHelper.getWeatherLatLon(position.latitude, position.longitude);
  if (q != null) ctx.dispatch(WeatherActionCreator.setWeather(q));
}

void _onDispose(Action action, Context<WeatherState> ctx) {
  //ctx.state.animationController.dispose();
}
