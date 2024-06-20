class Distance {
  final String unit;
  final int distance;
  final Duration? duration;

  const Distance({
    required this.unit,
    required this.distance,
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return {
      "unit": unit,
      "distance": distance,
      "duration": duration,
    };
  }

  factory Distance.fromMap(Map<String, dynamic> map) {
    return Distance(
      unit: map["unit"] as String,
      distance: map["distance"] as int,
      duration: map["duration"] as Duration,
    );
  }
}
