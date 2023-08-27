import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:ionicons/ionicons.dart';
import 'package:skwnfrontenddev_b_rizkiwahyunf/pages/home/home_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  Color mainColor = Colors.blue;
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          padding: NavBarPadding.symmetric(vertical: 6),
          decoration: NavBarDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 0),
                  blurRadius: 8)
            ],
          ),
          screens: [
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
          ],
          items: _navBarsItems(),
          navBarStyle: NavBarStyle.style5,
        ));
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home, size: 23),
        title: ("Home"),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Colors.blue,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.history, size: 23),
        title: ("PayOn"),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Colors.blue,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat, size: 23),
        title: ("Chat"),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Colors.blue,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person, size: 23),
        title: ("Profile"),
        textStyle: TextStyle(fontSize: 10),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Colors.blue,
      ),
    ];
  }
}