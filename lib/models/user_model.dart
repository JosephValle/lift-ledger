class User {
  final String uniqueId;
  final String username;
  final String displayName;
  final String bio;
  final String profilePicture;
  final int followers;
  final int workouts;
  final int loggedWorkouts;
  final DateTime lastLoggedIn;
  final DateTime created;
  final DateTime updated;
  final bool isPrivate;
  final bool isMetric;

  @override
  String toString() {
    return "User{uniqueId: $uniqueId}";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          uniqueId == other.uniqueId;

  @override
  int get hashCode => uniqueId.hashCode;

  Map<String, dynamic> toMap() {
    return {
      "uniqueId": uniqueId,
      "username": username,
      "displayName": displayName,
      "bio": bio,
      "profilePicture": profilePicture,
      "followers": followers,
      "workouts": workouts,
      "loggedWorkouts": loggedWorkouts,
      "lastLoggedIn": lastLoggedIn,
      "created": created,
      "updated": updated,
      "isPrivate": isPrivate,
      "isMetric": isMetric,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uniqueId: map["uniqueId"] as String,
      username: map["username"] as String,
      displayName: map["displayName"] as String,
      bio: map["bio"] as String,
      profilePicture: map["profilePicture"] as String,
      followers: map["followers"] as int,
      workouts: map["workouts"] as int,
      loggedWorkouts: map["loggedWorkouts"] as int,
      lastLoggedIn: map["lastLoggedIn"] as DateTime,
      created: map["created"] as DateTime,
      updated: map["updated"] as DateTime,
      isPrivate: map["isPrivate"] as bool,
      isMetric: map["isMetric"] as bool,
    );
  }

  const User({
    required this.uniqueId,
    required this.username,
    required this.displayName,
    required this.bio,
    required this.profilePicture,
    required this.followers,
    required this.workouts,
    required this.loggedWorkouts,
    required this.lastLoggedIn,
    required this.created,
    required this.updated,
    required this.isPrivate,
    required this.isMetric,
  });

  User copyWith({
    String? uniqueId,
    String? username,
    String? displayName,
    String? bio,
    String? profilePicture,
    int? followers,
    int? workouts,
    int? loggedWorkouts,
    DateTime? lastLoggedIn,
    DateTime? created,
    DateTime? updated,
    bool? isPrivate,
    bool? isMetric,
  }) {
    return User(
      uniqueId: uniqueId ?? this.uniqueId,
      username: username ?? this.username,
      displayName: displayName ?? this.displayName,
      bio: bio ?? this.bio,
      profilePicture: profilePicture ?? this.profilePicture,
      followers: followers ?? this.followers,
      workouts: workouts ?? this.workouts,
      loggedWorkouts: loggedWorkouts ?? this.loggedWorkouts,
      lastLoggedIn: lastLoggedIn ?? this.lastLoggedIn,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      isPrivate: isPrivate ?? this.isPrivate,
      isMetric: isMetric ?? this.isMetric,
    );
  }
}
