import 'package:hive_flutter/hive_flutter.dart';

abstract class AuthLocalDataSource {
  const AuthLocalDataSource();
  Future<int> saveUser(Map user);
  Map? getCurrentUser();
  Future<void> logOut();
}

class AuthLocalDataSourceImp extends AuthLocalDataSource {
  const AuthLocalDataSourceImp(this.userBox);
  final Box<Map> userBox;

  @override
  Future<int> saveUser(Map user) => userBox.add(user);

  @override
  Map? getCurrentUser() {
    return userBox.values.lastOrNull;
  }

  @override
  Future<void> logOut() async {
    await userBox.clear();
  }
}
