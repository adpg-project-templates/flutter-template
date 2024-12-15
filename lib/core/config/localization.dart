import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Localization {
  static Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static Iterable<Locale> supportedLocales = [
    const Locale('en'),
    const Locale('es'),
  ];
}
