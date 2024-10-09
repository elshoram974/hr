import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/user_entity.dart';

abstract class AuthLocalDataSource {
  const AuthLocalDataSource();
  Future<int> saveUser(UserEntity user);
  UserEntity? getCurrentUser();
  Future<void> logOut();
}

class AuthLocalDataSourceImp extends AuthLocalDataSource {
  const AuthLocalDataSourceImp(this.userBox);
  final Box<Map> userBox;

  @override
  Future<int> saveUser(UserEntity user) async{
    await userBox.clear();
    return userBox.add(user.toMap());
  }

  @override
  UserEntity? getCurrentUser() {
    final Map? map = userBox.values.lastOrNull;
    if (map == null) return null;
    return UserEntity.fromMap(map);
  }

  @override
  Future<void> logOut() => userBox.clear();
  
}
