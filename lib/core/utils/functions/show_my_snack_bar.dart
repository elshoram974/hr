import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_constants.dart';

abstract final class ShowMySnackBar {
  const ShowMySnackBar();

  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showMySnackBar(
    String content, {
    Duration? duration,
    TextStyle? style,
    SnackBarAction? action,
    Color? backgroundColor,
  }) {
    final ScaffoldMessengerState scaffold = ScaffoldMessenger.of(Get.context!);
    scaffold.clearSnackBars();
    return scaffold.showSnackBar(
      SnackBar(
        content: Text(
          content,
          textAlign: TextAlign.center,
          style: style ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
        ),
        action: action,
        dismissDirection: DismissDirection.horizontal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConst.borderRadius),
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(AppConst.defaultPadding),
        duration: duration ?? AppConst.duration,
      ),
    );
  }
}
