import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/model/nav_item.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/provider/navigation_provider.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/widgets/mobile_scaffold.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/widgets/nav_rail_desktop.dart';
import 'package:provider/provider.dart';

class ResponsiveNavBar extends StatefulWidget {
  const ResponsiveNavBar({super.key, required this.items});

  final List<NavItem> items;

  @override
  State<ResponsiveNavBar> createState() => _ResponsiveNavBarState();
}

class _ResponsiveNavBarState extends State<ResponsiveNavBar> {
  final GlobalKey<NavigatorState> _contentNavigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
      ],
      child: Builder(builder: (context) {
        final navigation = Provider.of<NavigationProvider>(context);
        navigation.setPages(widget.items);
        return Scaffold(
          body: isDesktop
              ? _buildDesktopLayout(navigation)
              : _buildMobileLayout(navigation),
        );
      }),
    );
  }

  Widget _buildDesktopLayout(NavigationProvider navigation) {
    return Row(
      children: [
        NavRailDesktop(
          selectedIndex: navigation.currentIndex,
          onDestinationSelected: (index) => navigation.setIndex(index),
        ),
        Expanded(
          child: Navigator(
            key: _contentNavigatorKey,
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => navigation.currentPage(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(NavigationProvider navigation) {
    return MobileScaffold(
      currentIndex: navigation.currentIndex,
      onTabSelected: navigation.setIndex,
      navigatorKey: _contentNavigatorKey,
    );
  }
}
