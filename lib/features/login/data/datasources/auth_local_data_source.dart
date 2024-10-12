import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hr/core/utils/constants/app_strings.dart';

import '../../domain/entities/user_entity.dart';

abstract class AuthLocalDataSource {
  const AuthLocalDataSource();
  Future<int> saveUser(UserEntity user);
  Future<void> saveToken(String token);
  UserEntity? getCurrentUser();
  Future<void> logOut();
}

class AuthLocalDataSourceImp extends AuthLocalDataSource {
  const AuthLocalDataSourceImp(this._userBox, this._storage);
  final Box<Map> _userBox;
  final FlutterSecureStorage _storage;

  @override
  Future<int> saveUser(UserEntity user) async {
    await _userBox.clear();

    return _userBox.add(user.toMap());
  }

  @override
  Future<void> saveToken(String token) {
    return _storage.write(key: AppString.kTokenKey, value: token);
  }

  @override
  UserEntity? getCurrentUser() {
    final Map? map = _userBox.values.lastOrNull;
    if (map == null) return null;
    return UserEntity.fromMap(map);
  }

  @override
  Future<void> logOut() async {
    Future.wait(
      [
        _storage.deleteAll(),
        _userBox.clear(),
      ],
    );
  }
}
