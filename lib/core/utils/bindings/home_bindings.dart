import 'package:get/get.dart';

import '../../../features/home/data/datasources/home_remote_data_source.dart';
import '../../../features/home/data/repositories/record_time_repositories_imp.dart';
import '../../../features/home/domain/repositories/record_time_repositories.dart';
import '../../../features/home/presentation/controller/home_controller.dart';
import '../../../features/login/data/datasources/auth_local_data_source.dart';
import '../services/api_services.dart';

class HomeBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HomeRemoteDataSource>(
      HomeRemoteDataSourceImp(Get.find<APIServices>()),
    );

    Get.put<RecordTimeRepositories>(
      RecordTimeRepositoriesImp(Get.find<HomeRemoteDataSource>()),
    );
    
    Get.put<HomeController>(
      HomeControllerImp(
        user: Get.find<AuthLocalDataSource>().getCurrentUser()!,
        repo: Get.find<RecordTimeRepositories>(),
      ),
    );
  }
}
