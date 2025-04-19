import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/config/provider.dart';
import 'package:provider/provider.dart';

import 'core/config/localization.dart';
import 'core/config/routes.dart';
import 'core/theme/theme.dart';
import 'settings/providers/settings_provider.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ProviderConfig.initServices();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderConfig.providers,
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
              initialRoute: Routes.home,
            );
          },
        );
      },
    );
  }
}
