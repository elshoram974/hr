import 'package:flutter/material.dart';

abstract final class AppLocale {
  const AppLocale();

  static Locale get deviceLocale {
    return WidgetsBinding.instance.platformDispatcher.locale;
  }
}
