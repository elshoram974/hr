import 'package:hive_flutter/hive_flutter.dart';

import '../constants/app_strings.dart';

class HiveHelper {
  const HiveHelper();

  static Future<void> initHive() async {
    await Hive.initFlutter();

    await Hive.openBox<Map>(AppString.kUserBox);
  }

  // ConfigModel? getConfigData() {
  //   final Map<String, dynamic>? map =
  //       Hive.box<Map<String, dynamic>>(AppString.kConfigBox).values.lastOrNull;
  //   if (map == null) return null;
  //   return ConfigModel.fromMap(map);
  // }

  // Future<int> saveConfigData(ConfigModel configData) async {
  //   final Box<Map<String, dynamic>> box =
  //       Hive.box<Map<String, dynamic>>(AppString.kConfigBox);
  //   await box.clear();
  //   return box.add(configData.toMap());
  // }
  // TODO:* make the same for user

  Map? getUserData() {
    final Map? map = Hive.box<Map>(AppString.kUserBox).values.lastOrNull;
    if (map == null) return null;
    return map;
  }

  Future<int> saveUserData(Map map) async {
    final Box<Map> box = Hive.box<Map>(AppString.kUserBox);
    await box.clear();
    return box.add(map);
  }
}
