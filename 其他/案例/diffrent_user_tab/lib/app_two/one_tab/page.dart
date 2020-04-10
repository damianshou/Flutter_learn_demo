import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class UserTwoOnePage extends Page<OneState, Map<String, dynamic>> {
  UserTwoOnePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<OneState>(
              adapter: null, slots: <String, Dependent<OneState>>{}),
          middleware: <Middleware<OneState>>[],
        );
}
