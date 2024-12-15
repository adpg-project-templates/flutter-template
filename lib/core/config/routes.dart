import 'package:flutter/material.dart';
import 'package:my_application_name_replace/home/home_view.dart';
import 'package:my_application_name_replace/settings/views/settings_view.dart';

class Routes {
  static const String home = '/';
  static const String settings = '/settings';
  static const String sampleItemDetails = '/sample-item-details';

  static final Map<String, WidgetBuilder> _routes = {
    settings: (context) => SettingsView(),
    home: (context) => HomeView(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final String? name = routeSettings.name;
    final WidgetBuilder? builder = _routes[name];
    return MaterialPageRoute<void>(
        settings: routeSettings,
        builder: builder ?? (context) => _onUnknownRoute(routeSettings));
  }

  static Widget _onUnknownRoute(RouteSettings routeSettings) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for ${routeSettings.name}'),
      ),
    );
  }
}
