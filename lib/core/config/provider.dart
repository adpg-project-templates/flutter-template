import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_application_name_replace/core/services/shared_preferences_service.dart';
import 'package:my_application_name_replace/settings/providers/settings_provider.dart';
import 'package:my_application_name_replace/settings/services/settings_service.dart';
import 'package:provider/provider.dart';

class ProviderConfig {
  static List<ChangeNotifierProvider> _providers = List.empty();
  static List<ChangeNotifierProvider> get providers => _providers;

  static Future<void> _initProviders() async {
    final settings = await SettingsProvider(SettingsService()).loadSettings();

    _providers = [
      ChangeNotifierProvider<SettingsProvider>(create: (_) => settings),
    ];
  }

  static Future<void> initServices() async {
    await dotenv.load();

    await SharedPreferencesService.initializeService();

    await _initProviders();
  }
}
