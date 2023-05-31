import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:janbahon_v2/profile_page_screen.dart';

import './home_page_screen.dart';
import './friends_page_screen.dart';
import './notification_page_screen.dart';

// ignore: camel_case_types
class mainNavigator extends StatefulWidget {
  const mainNavigator({super.key});

  @override
  State<mainNavigator> createState() => _mainNavigatorState();
}

// ignore: camel_case_types
class _mainNavigatorState extends State<mainNavigator> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _screens = [
    const homePageScreen(),
    const friendListScreen(),
    const notificationListScreen(),
    const profilePageScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 18.0,
            ),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 6,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              padding: const EdgeInsets.all(13),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.people_alt,
                  text: 'Friends',
                ),
                GButton(icon: Icons.notifications, text: 'Notifications'),
                GButton(
                  icon: Icons.person,
                  text: 'profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
