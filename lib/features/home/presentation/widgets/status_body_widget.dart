import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

import '../controller/home_controller.dart';
import 'init_status_card.dart';
import 'status_card_widget.dart';

class StatusBodyWidget extends StatelessWidget {
  const StatusBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Visibility(
          visible: !controller.isDayEnded,
          replacement: Text(
            S.of(context).goodbye,
            style: context.textTheme.displayMedium?.copyWith(
              color: context.theme.primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          child: Column(
            children: [
              CustomFilledButton(
                isLoading: controller.isLoading,
                text: controller.startDate == null
                    ? S.of(context).login
                    : S.of(context).logOut,
                onPressed:
                    controller.endDate != null ? null : controller.recordTime,
                filledColor:
                    controller.startDate == null ? Colors.green : Colors.red,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 2 * AppConst.defaultPadding),
              Visibility(
                visible: !controller.showStatusCard,
                replacement: Visibility(
                  visible: controller.endDate != null,
                  replacement: StatusCardWidget(
                    time: controller.startDate,
                    activeColor: Colors.green,
                    activeText: S.of(context).inText,
                    onDone: controller.closeStatusDialog,
                  ),
                  child: StatusCardWidget(
                    time: controller.endDate,
                    activeColor: Colors.red,
                    activeText: S.of(context).outText,
                    onDone: () => controller.closeStatusDialog(true),
                  ),
                ),
                child: const InitStatusCard(),
              ),
            ],
          ),
        );
      },
    );
  }
}
