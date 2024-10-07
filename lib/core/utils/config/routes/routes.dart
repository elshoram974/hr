import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract final class AppRoute {
  const AppRoute();

  static String? currentScreen;

  static const String login = "/login";
  static const String signUp = "/sign-up";
  static const String home = "/home";

  static List<GetPage> get routes => [
        GetPage(name: login, page: () => SizedBox()),
        GetPage(name: signUp, page: () => SizedBox()),
        GetPage(name: home, page: () => SizedBox()),
      ];
}
