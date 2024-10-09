import 'package:hr/core/status/status.dart';

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
    throw UnimplementedError();
  }
}
