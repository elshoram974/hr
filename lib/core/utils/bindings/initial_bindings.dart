import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/controller/config_controller.dart';
import '../helpers/hive_helper.dart';

class InitialBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HiveHelper>(const HiveHelper());
    await Get.putAsync<SharedPreferences>(SharedPreferences.getInstance);
    Get.put<ConfigController>(
      ConfigControllerImp(Get.find<SharedPreferences>()),
    );
  }
}
