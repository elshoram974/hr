import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/routes/routes.dart';
import '../constants/app_strings.dart';

class InitMiddleWare extends GetMiddleware {
  InitMiddleWare(this.prefs);
  final SharedPreferences prefs;
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (prefs.getBool(AppString.kIsLoggedIn) == true) {
      return const RouteSettings(name: AppRoute.home);
    } else if (prefs.getBool(AppString.kIsFirstOpen) == false) {
      return const RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
