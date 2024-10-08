import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hr/core/shared/filled_button.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';

class LoginButtons extends StatelessWidget {
  const LoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: TextButton(
            onPressed: () {},
            child: Text(
              S.of(context).forgetPassword,
              style: context.textTheme.bodyLarge,
            ),
          ),
        ),
        const SizedBox(height: 30),
        CustomFilledButton(
          text: S.of(context).login,
          onPressed: () {
            TextInput.finishAutofillContext();
          },
          style: context.textTheme.headlineMedium,
        ),
      ],
    );
  }
}
