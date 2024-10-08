import 'package:flutter/material.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/app_validate.dart';

import 'auth_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.hintText,
    required this.label,
    this.otherPass,
    this.controller,
    this.onChanged,
    this.autofillHints,
  });
  final String? otherPass;
  final TextEditingController? controller;
  final String? hintText;
  final String label;
  final Iterable<String>? autofillHints;
  final void Function(String)? onChanged;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return AuthField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.otherPass != null
          ? (val) => AppValidator.samePassword(val, widget.otherPass!)
          : (val) => AppValidator.auth(val, 8, 100, FieldType.password),
      obscureText: obscureText,
      suffixIconData: Icons.lock_outline_rounded,
      label: widget.label,
      hintText: widget.hintText,
      autofillHints: [AutofillHints.password, ...widget.autofillHints ?? []],
      suffix: IconButton(
        onPressed: () => setState(() => obscureText = !obscureText),
        color: Colors.grey,
        tooltip: obscureText
            ? S.of(context).showPassword
            : S.of(context).hidePassword,
        icon: Icon(
          obscureText
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
        ),
      ),
    );
  }
}
