import 'package:flutter/material.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/model/nav_item.dart';
import 'package:my_application_name_replace/core/widgets/responsive_navbar/navbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavBar(items: [
      NavItem(title: 'Home', icon: Icons.home, page: Container(color: Colors.red,)),
      NavItem(title: 'Products', icon: Icons.gif_box, page: Container(color: Colors.black,)),
      NavItem(title: 'Users', icon: Icons.people, page: Container(color: Colors.blue,)),
      NavItem(
          title: 'Settings',
          icon: Icons.settings,
          page: Container(color: Colors.green,),
          desktopPosition: DesktopPosition.bottom),
    ]);
  }
}
