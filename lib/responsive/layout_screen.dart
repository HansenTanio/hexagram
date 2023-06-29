import 'package:flutter/material.dart';
import 'package:hexagram/provider/theme_provider.dart';
import 'package:hexagram/screens/home_screen.dart';
import 'package:hexagram/screens/post_screen.dart';
import 'package:hexagram/screens/profile_screen.dart';
import 'package:hexagram/screens/search_screen.dart';
import 'package:hexagram/screens/settings_screen.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({
    super.key,
  });

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final List _body = [
    const HomeScreen(),
    const SearchScreen(),
    const PostScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: _body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: prov.enableDarkMode ? Colors.white : Colors.black,
          size: 25,
        ),
        selectedIconTheme: IconThemeData(
          color: prov.enableDarkMode ? Colors.white : Colors.black,
          size: 35,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
