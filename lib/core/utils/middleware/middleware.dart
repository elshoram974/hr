import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/routes/routes.dart';
import '../constants/app_strings.dart';
import '../helpers/hive_helper.dart';

class InitMiddleWare extends GetMiddleware {
  InitMiddleWare({required this.prefs, required this.hive});
  final SharedPreferences prefs;
  final HiveHelper hive;
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (hive.getUserData() != null) {
      return const RouteSettings(name: AppRoute.home);
    } else if (prefs.getBool(AppString.kIsFirstOpen) == false) {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
