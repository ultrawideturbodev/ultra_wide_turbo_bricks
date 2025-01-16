import 'package:flutter/material.dart';
import 'package:{{packageName.snakeCase()}}/core/globals/g_strings.dart';

import 'package:{{packageName.snakeCase()}}/core/models/selectable.dart';

enum SupportedLanguage {
  nl,
  en,
  ;

  static const defaultValue = SupportedLanguage.en;

  Selectable<SupportedLanguage> get asSelectable => Selectable(
        value: this,
        iconData: Icons.language,
        label: label,
      );

  String get languageCode {
    switch (this) {
      case SupportedLanguage.en:
        return 'en';
      case SupportedLanguage.nl:
        return 'nl';
    }
  }

  T fold<T>(T Function(SupportedLanguage supportedLanguage) supportedLanguage) =>
      supportedLanguage(this);

  Locale get toLocale => Locale(name);

  String get label {
    switch (this) {
      case SupportedLanguage.en:
        return gStrings.english;
      case SupportedLanguage.nl:
        return gStrings.dutch;
    }
  }
}

extension SupportedLanguagesExtension on String? {
  SupportedLanguage get toSupportedLanguage => SupportedLanguage.values.firstWhere(
        (element) => element.name == this?.trim().toLowerCase(),
        orElse: () => SupportedLanguage.nl,
      );
}
