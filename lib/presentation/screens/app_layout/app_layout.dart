import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:workshop/presentation/screens/home/home_screen.dart';
import 'package:workshop/presentation/screens/news/news_screen.dart';
import 'package:workshop/presentation/screens/settings/settings_screen.dart';
import 'package:workshop/presentation/styles/app_colors.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const NewsScreen(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home_filled),
              inactiveColor: Colors.black,
              textAlign: TextAlign.center,
              title: const Text('Home'),
              activeColor: AppColors.primaryColor,
            ),
            BottomNavyBarItem(
                inactiveColor: Colors.black,
                textAlign: TextAlign.center,
                icon: const Icon(Icons.newspaper),
                title: const Text('News'),
                activeColor: AppColors.primaryColor),
            BottomNavyBarItem(
                inactiveColor: Colors.black,
                textAlign: TextAlign.center,
                icon: const Icon(Icons.settings_outlined),
                title: const Text('Settings'),
                activeColor: AppColors.primaryColor),
          ],
        ));
  }
}
