import "package:lift_ledger/models/distance.dart";
import "package:lift_ledger/models/exercise_model.dart";

class Set {
  final Exercise exercise;
  final int? reps;
  final int? seconds;
  final Distance? distance;

  const Set({
    required this.exercise,
    this.reps,
    this.seconds,
    this.distance,
  });

  Map<String, dynamic> toMap() {
    return {
      'exercise': this.exercise,
      'reps': this.reps,
      'seconds': this.seconds,
      'distance': this.distance,
    };
  }

  factory Set.fromMap(Map<String, dynamic> map) {
    return Set(
      exercise: map['exercise'] as Exercise,
      reps: map['reps'] as int,
      seconds: map['seconds'] as int,
      distance: map['distance'] as Distance,
    );
  }
}
