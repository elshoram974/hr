import 'package:flutter/material.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/constants/app_constants.dart';
import 'package:hr/core/utils/functions/app_validate.dart';

import '../widgets/auth_field.dart';
import '../widgets/password_field.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthField(
          suffixIconData: Icons.mail_outline,
          label: S.of(context).emailAddress,
          hintText: S.of(context).enterEmailAddress,
          validator: (val) => AppValidator.auth(val, 0, 100, FieldType.email),
        ),
        const SizedBox(height: 2 * AppConst.defaultPadding),
        PasswordField(
          label: S.of(context).password,
          hintText: S.of(context).enterThePassword,
        ),
      ],
    );
  }
}
