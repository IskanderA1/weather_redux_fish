import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CityPage extends Page<CityState, Map<String, dynamic>> {
  CityPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CityState>(
                adapter: null,
                slots: <String, Dependent<CityState>>{
                }),
            middleware: <Middleware<CityState>>[
            ],);

}
