import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class MobileScaffold extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;
  final GlobalKey<NavigatorState> navigatorKey;

  const MobileScaffold({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
    required this.navigatorKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
        builder: (context, navigation, child) {
          return IndexedStack(
            index: currentIndex,
            children: navigation.pagesList(),
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    var theme = Theme.of(context);
    return Consumer<NavigationProvider>(
        builder: (context, navigation, child) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: theme.colorScheme.inverseSurface,
      onTap: onTabSelected,
      items: navigation.allItems().map(
            (e) => BottomNavigationBarItem(
              backgroundColor: theme.colorScheme.surfaceContainer,
              icon: Icon(e.icon, color: theme.colorScheme.inverseSurface),
              label: e.title,
            ),
          )
          .toList(),
    );});

  }
}
