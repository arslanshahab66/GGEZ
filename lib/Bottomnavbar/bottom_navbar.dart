import 'package:flutter/material.dart';
import 'package:googgame_ez/Homescreen/home_screen.dart';
import 'package:googgame_ez/screens/Discover/discover_screen.dart';
import 'package:googgame_ez/screens/TabBar/tab_bar.dart';
import 'package:googgame_ez/screens/Tournament/tournament_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return const [
      HomeScreen(),
      HomeScreen(),
      DiscoverScreen(),
      TabBarScreen(),
      TournamentScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/Home_bold.png',
          height: 20,
          width: 19,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Image.asset(
          'assets/Home.png',
          height: 20,
          width: 19,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/Location_bold.png',
          height: 24,
          width: 24,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Image.asset(
          'assets/Location.png',
          height: 24,
          width: 24,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/Discovery_bold.png',
          height: 24,
          width: 24,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Image.asset(
          'assets/Discovery.png',
          height: 24,
          width: 24,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/Notification_bold.png',
          height: 20,
          width: 20,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Image.asset(
          'assets/Notification.png',
          height: 24,
          width: 24,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/trophy_bold.png',
          height: 24,
          width: 24,
        ),
        activeColorPrimary: Colors.white,
        inactiveIcon: Image.asset(
          'assets/trophy.png',
          height: 24,
          width: 24,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarItems(),
        backgroundColor: const Color(0xff0B102C),
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(1),
        ),
        navBarStyle: NavBarStyle.simple,
      ),
    );
  }
}
