class UserEntity {
  final String name;
  final String email;
  final String? image;

  const UserEntity({
    required this.name,
    required this.email,
    required this.image,
  });

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      name: map['name'],
      email: map['email'],
      image: map['image'],
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
