import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/login/data/datasources/auth_local_data_source.dart';
import '../config/controller/config_controller.dart';
import '../constants/app_strings.dart';
import '../services/api_services.dart';

class InitialBindings extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<APIServices>(APIServices(Dio()));

    await Get.putAsync<SharedPreferences>(SharedPreferences.getInstance);
    Get.put<ConfigController>(
      ConfigControllerImp(Get.find<SharedPreferences>()),
    );
    Get.put<AuthLocalDataSource>(
      AuthLocalDataSourceImp(
        await Hive.openBox<Map>(AppString.kUserBox),
      ),
    );
  }
}
