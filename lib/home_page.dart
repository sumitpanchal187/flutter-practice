import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        color: Colors.blue,
        buttonBackgroundColor: Colors.purple,
        height: 65,
        index: _selectedIndex,
        animationDuration: Duration(milliseconds: 500),
        items: [
          CustomNavigationBarItem(icon: Icons.home, label: 'Home'),
          CustomNavigationBarItem(icon: Icons.search, label: 'Search'),
          CustomNavigationBarItem(icon: Icons.add, label: 'Add', padding: 0.0),
          CustomNavigationBarItem(icon: Icons.favorite, label: 'Favorite'),
          CustomNavigationBarItem(icon: Icons.person, label: 'Profile'),
        ],
        onTap: _onItemTapped,
      ),
      body: Center(
        // child: Text(
        //   "Selected Index: $_selectedIndex",
        //   style: TextStyle(fontSize: 20),
        // ),
      ),
    );
  }

  CurvedNavigationBarItem CustomNavigationBarItem({
    required IconData icon,
    required String label,
    double padding = 8.0,
  }) {
    return CurvedNavigationBarItem(
      labelStyle: TextStyle(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(top: padding),
        child: Icon(icon, size: 30, color: Colors.white),
      ),
      label: label,
    );
  }
}
