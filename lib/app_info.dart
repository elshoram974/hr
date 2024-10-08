import 'package:flutter/foundation.dart' show kDebugMode;

import 'core/utils/config/locale/locale_model.dart';

abstract final class AppInfo {
  const AppInfo();

  static const String baseURL = "My_url";

  static const String appName = "HR";
  static const String appId = "com.devetechno.hr";
  static const String appVersion = "1.0.0";
  static const int appBuildVersion = 1;

  static const bool isDebugMode = kDebugMode;

  // * To add locale .. You have to add it in package(flutter intel) and add text in its file .arb and don't forget to add it in info.plist file
  static const List<LocaleModel> supportedLocales = [
    LocaleModel(
      languageCode: "ar",
      countryCode: "EG",
      languageName: "العربية",
    ),
    LocaleModel(
      languageCode: "en",
      countryCode: "US",
      languageName: "English",
    ),
  ];

  // static const String appIcon = AppAssets.appIcon;
  // static const String splashIcon = AppAssets.splashIcon;
  // static const String splashAndroid12 = AppAssets.splashAndroid12;
}
