import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/constants/app_assets.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

import '../controller/home_controller.dart';

class InitStatusCard extends StatelessWidget {
  const InitStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Column(
          children: [
            Text(
              controller.startDate == null
                  ? S.of(context).clockInToBeginTheShift
                  : S.of(context).clockInToEndTheShift,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineMedium?.copyWith(
                color: context.theme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              AppAssets.fingerprint,
              width: 0.4 * MediaQuery.sizeOf(context).shortestSide,
            ),
            const SizedBox(height: AppConst.defaultPadding),
            Text(
              controller.startDate == null
                  ? S.of(context).pleaseClickHereToLogin
                  : S.of(context).pleaseClickHereToLogOut,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineSmall?.copyWith(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        );
      },
    );
  }
}
