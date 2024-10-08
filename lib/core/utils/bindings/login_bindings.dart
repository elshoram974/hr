import 'package:get/get.dart';

import '../../../features/login/presentation/controller/login_controller.dart';

class LoginBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<LoginController>(LoginControllerImp());
  }
}
