import 'package:hr/core/utils/services/api_services.dart';

import '../../domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();
  Future<UserEntity> login({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImp extends AuthRemoteDataSource {
  const AuthRemoteDataSourceImp(this.apiServices);
  final APIServices apiServices;

  @override
  Future<UserEntity> login({
    required String email,
    required String password,
  }) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
