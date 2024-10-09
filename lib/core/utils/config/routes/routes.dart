import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../features/login/presentation/screens/login_screen.dart';
import '../../../../features/on_boarding/presentation/screens/on_boarding_screen.dart';
import '../../bindings/login_bindings.dart';
import '../../helpers/hive_helper.dart';
import '../../middleware/login_middleware.dart';
import '../../middleware/middleware.dart';

abstract final class AppRoute {
  const AppRoute();

  static String? currentScreen;

  static const String onBoarding = "/on-boarding";
  static const String login = "/login";
  static const String signUp = "/sign-up";
  static const String home = "/home";

  static List<GetPage> get pages => [
        GetPage(
          name: onBoarding,
          page: () => const OnBoardingScreen(),
          middlewares: [
            InitMiddleWare(
              prefs: Get.find<SharedPreferences>(),
              hive: Get.find<HiveHelper>(),
            ),
          ],
        ),
        GetPage(
          name: login,
          page: () => const LoginScreen(),
          binding: LoginBindings(),
          middlewares: [LoginMiddleWare(Get.find<HiveHelper>())],
        ),
        GetPage(name: signUp, page: () => const SizedBox()),
        GetPage(name: home, page: () => const SizedBox()),
      ];
}
