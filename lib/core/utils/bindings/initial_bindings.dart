import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/controller/config_controller.dart';

class InitialBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync<SharedPreferences>(SharedPreferences.getInstance);
    Get.put<ConfigController>(
      ConfigControllerImp(Get.find<SharedPreferences>()),
    );
  }
}
