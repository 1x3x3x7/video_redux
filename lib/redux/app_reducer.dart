import 'package:video_player_example/redux/session_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(sessionState: sessionReducer(state.sessionState, action));
}
