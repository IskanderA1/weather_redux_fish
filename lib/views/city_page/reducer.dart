import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CityState> buildReducer() {
  return asReducer(
    <Object, Reducer<CityState>>{
      CityAction.action: _onAction,
    },
  );
}

CityState _onAction(CityState state, Action action) {
  final CityState newState = state.clone();
  return newState;
}
