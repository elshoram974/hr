import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'app_info.dart';
import 'core/utils/config/locale/generated/l10n.dart';
import 'core/utils/config/routes/routes.dart';
import 'core/utils/config/theme/dark_theme.dart';
import 'core/utils/config/theme/light_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: AppInfo.isDebugMode,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      useInheritedMediaQuery: AppInfo.isDebugMode,
      locale: AppInfo.isDebugMode
          ? DevicePreview.locale(context)
          : Get.deviceLocale,
      builder: DevicePreview.appBuilder,
      title: 'HR',
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      getPages: AppRoute.routes,
      initialRoute: AppRoute.onBoarding,
    );
  }
}
