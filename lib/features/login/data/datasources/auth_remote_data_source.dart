// import 'package:hr/core/utils/constants/app_links.dart';
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
  }) async {
    // final Map<String, dynamic> res = await apiServices.post(
    //   AppLinks.login,
    //   {
    //     "email": email,
    //     "password": password,
    //   },
    // );
    // return UserEntity.fromMap(res);

    return UserEntity(name: "Mohammed Shora", email: email, image: "http://via.placeholder.com/200x2048");
  }
}
