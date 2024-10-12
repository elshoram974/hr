import 'package:get/get.dart';

import '../../../features/home/data/repositories/record_time_repositories_imp.dart';
import '../../../features/home/domain/repositories/record_time_repositories.dart';
import '../../../features/home/presentation/controller/home_controller.dart';
import '../../../features/login/data/datasources/auth_local_data_source.dart';

class HomeBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<RecordTimeRepositories>(const RecordTimeRepositoriesImp());
    Get.put<HomeController>(
      HomeControllerImp(
        user: Get.find<AuthLocalDataSource>().getCurrentUser()!,
        repo: Get.find<RecordTimeRepositories>(),
      ),
    );
  }
}
