import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/config/localization.dart';
import 'core/config/routes.dart';
import 'core/theme/theme.dart';
import 'settings/providers/settings_provider.dart';
import 'settings/services/settings_service.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  final settings = SettingsProvider(SettingsService());

  await settings.loadSettings();

  runApp(App(settings: settings));
}

class App extends StatelessWidget {
  const App({super.key, required this.settings});

  final SettingsProvider settings;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Add new providers here
      providers: [
        ChangeNotifierProvider(create: (_) => settings),
      ],
      builder: (BuildContext context, Widget? child) {
        return Consumer<SettingsProvider>(
          builder:
              (BuildContext context, SettingsProvider provider, Widget? child) {
            return MaterialApp(
              restorationScopeId: 'app',
              localizationsDelegates: Localization.localizationsDelegates,
              supportedLocales: Localization.supportedLocales,
              onGenerateTitle: (BuildContext context) =>
                  AppLocalizations.of(context)!.appTitle,
              theme: AppThemes.lightTheme,
              darkTheme: AppThemes.darkTheme,
              themeMode: provider.themeMode,
              onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
            );
          },
        );
      },
    );
  }
}
