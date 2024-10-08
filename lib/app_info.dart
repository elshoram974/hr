import 'package:flutter/foundation.dart' show kDebugMode;

abstract final class AppInfo {
  const AppInfo();

  static const String baseURL = "My_url";

  static const String appName = "HR";
  static const String appId = "com.devetechno.hr";
  static const String appVersion = "1.0.0";
  static const int appBuildVersion = 1;

  static const bool isDebugMode = kDebugMode;

  // static const String appIcon = AppAssets.appIcon;
  // static const String splashIcon = AppAssets.splashIcon;
  // static const String splashAndroid12 = AppAssets.splashAndroid12;
}
