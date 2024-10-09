import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/functions/execute_and_handle_remote_errors.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repositories.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoriesImp extends AuthRepositories {
  const AuthRepositoriesImp({
    required this.localDataSource,
    required this.remoteDataSource,
  });
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  @override
  Future<Status<UserEntity>> login({
    required String email,
    required String password,
  }) {
    return executeAndHandleErrors<UserEntity>(
      () async {
        final UserEntity user = await remoteDataSource.login(
          email: email,
          password: password,
        );
        // TODO:* save token
        await localDataSource.saveUser(user);
        return user;
      },
    );
  }
}
