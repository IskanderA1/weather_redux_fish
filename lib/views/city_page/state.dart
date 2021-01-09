import 'package:fish_redux/fish_redux.dart';

class CityState implements Cloneable<CityState> {

  @override
  CityState clone() {
    return CityState();
  }
}

CityState initState(Map<String, dynamic> args) {
  return CityState();
}
