import 'package:flutter/material.dart';
import 'package:weather_redux_fish/views/weather_page/page.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: WeatherPage().buildPage(null));
}

