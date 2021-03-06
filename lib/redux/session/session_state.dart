import 'package:video_player_example/domain/api_response.dart';
import 'package:video_player_example/domain/workout_response.dart';
import 'package:video_player_example/redux/session/workout/workout_state.dart';

class SessionState {
  final WorkoutState workoutState;
  final ApiResponse<WorkoutResponse> response;
  final int id;
  SessionState(
      {required this.response, required this.workoutState, this.id = 0});

  SessionState copyWith({
    WorkoutState? workoutState,
    ApiResponse<WorkoutResponse>? response,
    int? id,
  }) {
    return SessionState(
      workoutState: workoutState ?? this.workoutState,
      response: response ?? this.response,
      id: id ?? this.id,
    );
  }
}
