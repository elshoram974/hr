import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/routes/routes.dart';
import '../helpers/hive_helper.dart';

class LoginMiddleWare extends GetMiddleware {
  LoginMiddleWare(this.hive);
  final HiveHelper hive;
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (hive.getUserData() != null) {
      return const RouteSettings(name: AppRoute.home);
    }

    return null;
  }
}
