import 'package:flutter/material.dart';

class LocaleModel {
  final String languageName;
  final String languageCode;
  final String countryCode;

  const LocaleModel({
    required this.languageName,
    required this.languageCode,
    required this.countryCode,
  });

  Locale get locale => Locale(languageCode);
}
