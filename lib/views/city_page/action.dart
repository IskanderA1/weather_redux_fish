import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CityAction { action }

class CityActionCreator {
  static Action onAction() {
    return const Action(CityAction.action);
  }
}
