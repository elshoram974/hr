import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
