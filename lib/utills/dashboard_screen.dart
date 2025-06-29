import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import '../tab/add_screen.dart';
import '../tab/favorite_tab.dart';
import '../tab/home_screen.dart';
import '../tab/profile_tab.dart';
import '../tab/search_tab.dart';
import 'base_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Get.put(HomeController());
  }

  final List<String> _titles = ['Home', 'Search', 'Add', 'Favorite', 'Profile'];

  final List<Widget> _tabs = [
    HomeScreen(),
    SearchTab(),
    AddTab(),
    FavoriteTab(),
    ProfileTab(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: _titles[_selectedIndex],
      selectedIndex: _selectedIndex,
      onDrawerItemTap: _onTabSelected,
      showBackButton: false,
      child: _tabs[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        color: Colors.blue,
        buttonBackgroundColor: Colors.purple,
        height: 70,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 500),
        items: [
          _customNavItem(Icons.home_filled, 'Home'),
          _customNavItem(Icons.search, 'Search'),
          _customNavItem(Icons.add, 'Add'),
          _customNavItem(Icons.favorite, 'Favorite'),
          _customNavItem(Icons.person, 'Profile'),
        ],
        onTap: _onTabSelected,
      ),
    );
  }

  CurvedNavigationBarItem _customNavItem(IconData icon, String label) {
    return CurvedNavigationBarItem(
      labelStyle: TextStyle(color: Colors.white),
      child: Icon(icon, color: Colors.white, size: 30),
      label: label,
    );
  }
}
