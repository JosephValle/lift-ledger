class Exercise {
  final String name;
  final String uniqueId;
  final String type;

  const Exercise({
    required this.name,
    required this.uniqueId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'uniqueId': this.uniqueId,
      'type': this.type,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      name: map['name'] as String,
      uniqueId: map['uniqueId'] as String,
      type: map['type'] as String,
    );
  }
}
