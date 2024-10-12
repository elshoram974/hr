import 'package:hr/core/utils/constants/app_links.dart';
import 'package:hr/core/utils/services/api_services.dart';

import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();
  Future<({UserModel user, String token})> login({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImp extends AuthRemoteDataSource {
  const AuthRemoteDataSourceImp(this.apiServices);
  final APIServices apiServices;

  @override
  Future<({UserModel user, String token})> login({
    required String email,
    required String password,
  }) async {
    final Map<String, dynamic> res = await apiServices.post(
      AppLinks.login,
      {
        "email": email,
        "password": password,
      },
    );
    final String token = res['token'];

    return (
      user: UserModel.fromMap(res..remove('token')),
      token: token,
    );

    // return (
    //   user: UserEntity(
    //     name: "Mohammed Shora",
    //     email: email,
    //     image: "http://via.placeholder.com/200x2048",
    //   ),
    //   token: "any thing"
    // );
  }
}
