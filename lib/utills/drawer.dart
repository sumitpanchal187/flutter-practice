import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userImage;
  final Function(int) onNavigate;
  final int selectedIndex;

  const AppDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userImage,
    required this.onNavigate,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          _drawerItem(Icons.home, 'Home', 0),
          _drawerItem(Icons.search, 'Search', 1),
          _drawerItem(Icons.add, 'Add', 2),
          _drawerItem(Icons.favorite, 'Favorite', 3),
          _drawerItem(Icons.person, 'Profile', 4),
        ],
      ),
    );
  }

  Widget _drawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: selectedIndex == index,
      onTap: () => onNavigate(index),
    );
  }
}
