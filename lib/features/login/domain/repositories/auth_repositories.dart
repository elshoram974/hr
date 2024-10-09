import 'package:hr/core/status/status.dart';

import '../entities/user_entity.dart';

abstract class AuthRepositories {
  const AuthRepositories();

  Future<Status<UserEntity>> login({
    required String email,
    required String password,
  });
}
