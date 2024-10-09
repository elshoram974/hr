class UserEntity {
  final String name;
  final String email;
  final String? image;

  const UserEntity({
    required this.name,
    required this.email,
    required this.image,
  });

  factory UserEntity.fromMap(Map map) {
    return UserEntity(
      name: map['name'] as String,
      email: map['email'] as String,
      image: map['image'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'image': image,
    };
  }
}
