import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/app_info.dart';
import 'package:hr/core/utils/config/controller/config_controller.dart';
import 'package:hr/core/utils/config/locale/locale_model.dart';

class LanguageButtons extends StatelessWidget {
  const LanguageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
        AppInfo.supportedLocales.length,
        (index) {
          final LocaleModel l = AppInfo.supportedLocales[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextButton(
              onPressed: () {
                Get.find<ConfigController>().changeLocale(l.locale);
              },
              child: Text(
                l.languageName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          );
        },
      ),
    );
  }
}
