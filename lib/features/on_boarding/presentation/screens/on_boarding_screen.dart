import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/shared/responsive/constrained_box.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/config/routes/routes.dart';
import 'package:hr/core/utils/constants/app_assets.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

import '../widgets/header_text.dart';
import '../widgets/language_buttons.dart';

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
                const Spacer(),
                const HeaderText(),
                const Spacer(flex: 2),
                Image.asset(AppAssets.hrIntro),
                const Spacer(flex: 2),
                CustomFilledButton(
                  text: S.of(context).startNow,
                  onPressed: goToLogin,
                  style: context.textTheme.displaySmall,
                ),
                const SizedBox(height: 20),
                const LanguageButtons(),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void goToLogin() async {
    Get.offNamed(AppRoute.login);
  }
}
