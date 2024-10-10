import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/circular_image_widget.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/shared/responsive/constrained_box.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

import 'time_row_widget.dart';

class ExpandedHomeBodyWidget extends StatelessWidget {
  const ExpandedHomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double padding = 2 * AppConst.defaultPadding;
    return SliverFillRemaining(
      hasScrollBody: false,
      fillOverscroll: true,
      child: Container(
        padding: const EdgeInsets.only(
          top: padding,
          left: padding,
          right: padding,
        ),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(40),
          ),
        ),
        child: MyResConstrainedBoxAlign(
          child: Column(
            children: [
              const TimeRowWidget(padding: padding),
              const SizedBox(height: padding),
              CustomFilledButton(
                text: S.of(context).login,
                onPressed: () {},
                filledColor: Colors.green,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: padding),
              Text(
                ,
                style: context.textTheme.headlineMedium?.copyWith(
                  color: context.theme.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppConst.defaultPadding),
              CircularImageWidget(
                imageUrl: "controller.user.image",
                radius: imageSize(context),
              ),
              const SizedBox(height: AppConst.defaultPadding),
              Text(
                "الرجاء الضغط هنا لتسجيل الدخــول",
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: padding),
            ],
          ),
        ),
      ),
    );
  }
}

double imageSize(BuildContext context) =>
    0.4 * MediaQuery.sizeOf(context).shortestSide;
