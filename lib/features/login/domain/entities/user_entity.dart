class UserEntity {
  final String name;
  final String email;
  final String? image;
  final DateTime? startDate;
  final DateTime? endDate;

  const UserEntity({
    required this.name,
    required this.email,
    required this.image,
    this.startDate,
    this.endDate,
  });

  factory UserEntity.fromMap(Map map) {
    return UserEntity(
      name: map['name'] as String,
      email: map['email'] as String,
      image: map['image'] as String?,
      startDate: DateTime.tryParse(map['start_date'] as String? ?? ""),
      endDate: DateTime.tryParse(map['end_date'] as String? ?? ""),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'image': image,
      'start_date': startDate?.toIso8601String(),
      'end_date': endDate?.toIso8601String(),
    };
  }

  UserEntity setStartDate(DateTime? startDate) {
    return UserEntity(
      name: name,
      email: email,
      image: image,
      startDate: startDate,
      endDate: endDate,
    );
  }
  UserEntity setEndDate(DateTime? endDate) {
    return UserEntity(
      name: name,
      email: email,
      image: image,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
