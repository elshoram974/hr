import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../features/on_boarding/presentation/screens/on_boarding_screen.dart';

abstract final class AppRoute {
  const AppRoute();

  static String? currentScreen;

  static const String onBoarding = "/on-boarding";
  static const String login = "/login";
  static const String signUp = "/sign-up";
  static const String home = "/home";

  static List<GetPage> get routes => [
        GetPage(name: onBoarding, page: () => const OnBoardingScreen()),
        GetPage(name: login, page: () => SizedBox()),
        GetPage(name: signUp, page: () => SizedBox()),
        GetPage(name: home, page: () => SizedBox()),
      ];
}
