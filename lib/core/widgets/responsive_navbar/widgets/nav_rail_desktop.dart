import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

class NavRailDesktop extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const NavRailDesktop({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  State<NavRailDesktop> createState() => _NavRailDesktopState();
}

// ... existing imports and class definition ...

class _NavRailDesktopState extends State<NavRailDesktop> {
  bool _extended = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Consumer<NavigationProvider>(
      builder: (context, navigation, child) {
        return Container(
          color: theme.colorScheme.surfaceContainer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _extended = !_extended;
                  });
                },
                icon: Icon(
                  _extended ? Icons.chevron_left : Icons.chevron_right,
                  color: theme.colorScheme.inverseSurface,
                ),
              ),
              Expanded(
                child: NavigationRail(
                  minWidth: 72,
                  extended: _extended,
                  selectedIndex: widget.selectedIndex >=
                          navigation.desktopTopItems().length
                      ? null
                      : widget.selectedIndex,
                  backgroundColor: theme.colorScheme.surfaceContainer,
                  onDestinationSelected: widget.onDestinationSelected,
                  indicatorColor: theme.colorScheme.primary,
                  selectedLabelTextStyle:
                      TextStyle(color: theme.colorScheme.surface),
                  unselectedLabelTextStyle:
                      TextStyle(color: theme.colorScheme.inverseSurface),
                  destinations: navigation.desktopTopItems().map((item) {
                    return NavigationRailDestination(
                      icon: Icon(item.icon,
                          color: theme.colorScheme.inverseSurface),
                      label:
                          Text(item.title, style: theme.textTheme.bodyMedium),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 60,
                child: NavigationRail(
                  minWidth: 72,
                  extended: _extended,
                  backgroundColor: theme.colorScheme.surface,
                  selectedIndex: widget.selectedIndex >=
                          navigation.desktopTopItems().length
                      ? widget.selectedIndex - navigation.desktopTopItems().length
                      : null,
                  onDestinationSelected: (index) =>
                      widget.onDestinationSelected(index + navigation.desktopTopItems().length),
                  indicatorColor: theme.colorScheme.primary,
                  selectedLabelTextStyle:
                      TextStyle(color: theme.colorScheme.surface),
                  unselectedLabelTextStyle:
                      TextStyle(color: theme.colorScheme.inverseSurface),
                  destinations: navigation.desktopBottomItems().map((item) {
                    return NavigationRailDestination(
                      icon: Icon(item.icon,
                          color: theme.colorScheme.inverseSurface),
                      label:
                          Text(item.title, style: theme.textTheme.bodyMedium),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
