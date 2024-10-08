import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/app_info.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/shared/responsive/constrained_box.dart';
import 'package:hr/core/utils/config/controller/config_controller.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/config/locale/locale_model.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppConst.defaultPadding),
          child: MyResConstrainedBoxAlign(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  S.of(context).welcome,
                  textAlign: TextAlign.center,
                  style: context.textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  S.of(context).humanResourcesManagement,
                  textAlign: TextAlign.center,
                  style: context.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const Spacer(flex: 5),

                //image

                CustomFilledButton(
                  text: S.of(context).startNow,
                  onPressed: () {},
                  style: context.textTheme.displaySmall,
                  minimumSize: const Size(256, 64),
                ),
                const SizedBox(height: 20),
                Wrap(
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
                          child: Text(l.languageName),
                        ),
                      );
                    },
                  ),
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
