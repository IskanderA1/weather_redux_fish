import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CityState> buildEffect() {
  return combineEffects(<Object, Effect<CityState>>{
    CityAction.action: _onAction,
  });
}

void _onAction(Action action, Context<CityState> ctx) {
}
