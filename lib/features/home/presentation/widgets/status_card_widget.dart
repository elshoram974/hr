import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/constants/app_constants.dart';
import 'package:intl/intl.dart';

class StatusCardWidget extends StatelessWidget {
  const StatusCardWidget({
    super.key,
    this.onDone,
    required this.time,
    required this.activeColor,
    required this.activeText,
  });
  final DateTime? time;
  final Color activeColor;
  final String activeText;
  final void Function()? onDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(2 * AppConst.borderRadius),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white12,
            spreadRadius: 1,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onDone,
            icon: const Icon(Icons.close),
          ),
          Padding(
            padding: const EdgeInsets.all(2 * AppConst.defaultPadding)
                .copyWith(top: 0),
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  color: activeColor,
                  size: 40,
                ),
                const SizedBox(height: AppConst.defaultPadding),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: context.textTheme.headlineLarge?.copyWith(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: S.of(context).logged),
                      TextSpan(
                        text: " $activeText ",
                        style: TextStyle(color: activeColor),
                      ),
                      TextSpan(text: S.of(context).successfully),
                    ],
                  ),
                ),
                if (time != null)
                  Text(
                    DateFormat("hh:mma").format(time!),
                    textAlign: TextAlign.center,
                    style: context.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                Text(
                  S.of(context).welcome,
                  textAlign: TextAlign.center,
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: context.theme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConst.defaultPadding),
                CustomFilledButton(
                  text: S.of(context).done,
                  filledColor: activeColor,
                  onPressed: onDone,
                  style: context.textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
