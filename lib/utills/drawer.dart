import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userImage;
  final Function(int) onNavigate;

  const AppDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userImage,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: Text(userEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          _drawerItem(
              icon: Icons.home, text: "Home", onTap: () => onNavigate(0)),
          _drawerItem(
              icon: Icons.search, text: "Search", onTap: () => onNavigate(1)),
          _drawerItem(icon: Icons.add, text: "Add", onTap: () => onNavigate(2)),
          _drawerItem(
              icon: Icons.favorite,
              text: "Favorite",
              onTap: () => onNavigate(3)),
          _drawerItem(
              icon: Icons.person, text: "Profile", onTap: () => onNavigate(4)),
          const Divider(),
          _drawerItem(
              icon: Icons.logout,
              text: "Logout",
              onTap: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Logged out successfully")));
              }),
        ],
      ),
    );
  }

  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: const TextStyle(fontSize: 16)),
      onTap: onTap,
    );
  }
}
