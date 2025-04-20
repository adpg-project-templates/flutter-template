import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/model/nav_item.dart';

class NavigationProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  List<NavItem> pages = [];

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void setPages(List<NavItem> items) {
    pages = items;
    notifyListeners();
  }

  Widget currentPage() {
    return pages[_currentIndex].page;
  }

  List<Widget> pagesList() {
    return allItems().map((e) => e.page).toList();
  }

  List<NavItem> allItems() {
    return [...desktopTopItems(), ...desktopBottomItems()];
  }

  List<NavItem> desktopTopItems() {
    return pages
        .where((e) => e.desktopPosition == DesktopPosition.top)
        .toList();
  }

  List<NavItem> desktopBottomItems() {
    return pages
        .where((e) => e.desktopPosition == DesktopPosition.bottom)
        .toList();
  }
}
