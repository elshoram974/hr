import 'package:hr/core/utils/constants/app_links.dart';
import 'package:hr/core/utils/services/api_services.dart';

import '../../../login/data/models/user_model.dart';

abstract class HomeRemoteDataSource {
  const HomeRemoteDataSource();
  Future<UserModel> recordTime();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  const HomeRemoteDataSourceImp(this.apiServices);
  final APIServices apiServices;

  @override
  Future<UserModel> recordTime() async {
    await apiServices.post(AppLinks.login, {});

    return UserModel(
      name: "Start time",
      email: "email",
      image: "",
      startDate: DateTime.now(),
    );
  }
}
