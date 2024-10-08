import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr/core/default_field.dart';
import 'package:hr/core/utils/constants/app_constants.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.suffixIconData,
    this.hintText,
    required this.label,
    this.suffix,
    this.obscureText = false,
    this.onChanged,
    this.validator,
    this.controller,
    this.autofillHints,
  });
  final TextEditingController? controller;
  final IconData suffixIconData;
  final String? hintText;
  final String label;
  final Widget? suffix;
  final bool obscureText;
  final Iterable<String>? autofillHints;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: context.textTheme.bodyLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 0.5 * AppConst.defaultPadding),
        MyDefaultField(
          controller: controller,
          hintText: hintText,
          keyboardType: TextInputType.emailAddress,
          validator: validator,
          prefix: Icon(
            suffixIconData,
            color: context.theme.primaryColor.withOpacity(0.8),
          ),
          suffix: suffix,
          obscureText: obscureText,
          onChanged: onChanged,
          autofillHints: autofillHints,
        ),
      ],
    );
  }
}
