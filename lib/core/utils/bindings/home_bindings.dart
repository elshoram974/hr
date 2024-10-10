import 'package:get/get.dart';

import '../../../features/home/presentation/controller/home_controller.dart';
import '../../../features/login/data/datasources/auth_local_data_source.dart';

class HomeBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HomeController>(
      HomeControllerImp(Get.find<AuthLocalDataSource>().getCurrentUser()!),
    );
  }
}
