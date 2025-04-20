
import 'package:flutter/material.dart';

enum DesktopPosition {
  top,
  bottom,
}

class NavItem {
  final String title;
  final IconData icon;
  final Widget page;
  final DesktopPosition? desktopPosition;

  NavItem({
    required this.title,
    required this.icon,
    required this.page,
    this.desktopPosition = DesktopPosition.top,
  });
}