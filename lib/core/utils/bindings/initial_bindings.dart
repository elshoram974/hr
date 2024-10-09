import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/login/data/datasources/auth_local_data_source.dart';
import '../config/controller/config_controller.dart';
import '../constants/app_strings.dart';

class InitialBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    await Get.putAsync<SharedPreferences>(SharedPreferences.getInstance);
    Get.put<ConfigController>(
      ConfigControllerImp(Get.find<SharedPreferences>()),
    );
    Get.put<AuthLocalDataSource>(
      AuthLocalDataSourceImp(
        Hive.box<Map<String, dynamic>>(AppString.kUserBox),
      ),
    );
  }
}
