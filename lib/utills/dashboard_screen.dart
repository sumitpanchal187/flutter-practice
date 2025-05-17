import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/tab/add_tab.dart';
import 'package:practice_flutter/tab/favorite_tab.dart';
import 'package:practice_flutter/tab/home_tab.dart';
import 'package:practice_flutter/tab/profile_tab.dart';
import 'package:practice_flutter/tab/search_tab.dart';
import 'package:practice_flutter/utills/drawer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeTab(),
    const SearchTab(),
    const AddTab(),
    const FavoriteTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateTo(int selectedIndex) {
    if (_selectedIndex == selectedIndex) {
      Navigator.pop(context);
      return;
    }

    setState(() {
      _selectedIndex = selectedIndex;
    });

    Navigator.pop(context); // Close the drawer after updating index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        userName: "Sumit",
        userEmail: "sumuit@gmail.com",
        userImage:
            "https://i.pinimg.com/236x/c7/9a/37/c79a37e13ef14be556b51143bcbb1b01.jpg",
        onNavigate: _navigateTo,
      ),
      appBar: AppBar(
        title: Text(
          ['Home', 'Search', 'Add', 'Favorite', 'Profile'][_selectedIndex],
          style: const TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        color: Colors.blue,
        buttonBackgroundColor: Colors.purple,
        height: 65,
        index: _selectedIndex,
        animationDuration: const Duration(milliseconds: 500),
        items: [
          _customNavItem(Icons.home, 'Home'),
          _customNavItem(Icons.search, 'Search'),
          _customNavItem(Icons.add, 'Add', padding: 0.0),
          _customNavItem(Icons.favorite, 'Favorite'),
          _customNavItem(Icons.person, 'Profile'),
        ],
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }

  CurvedNavigationBarItem _customNavItem(IconData icon, String label,
      {double padding = 8.0}) {
    return CurvedNavigationBarItem(
      labelStyle: const TextStyle(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(top: padding),
        child: Icon(icon, size: 30, color: Colors.white),
      ),
      label: label,
    );
  }
}
