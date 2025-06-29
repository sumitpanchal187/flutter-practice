import 'package:flutter/material.dart';

import 'drawer.dart';

class BaseScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final bool showBackButton;
  final int selectedIndex;
  final void Function(int index)? onDrawerItemTap;
  final Widget? bottomNavigationBar;

  const BaseScreen({
    super.key,
    required this.title,
    required this.child,
    this.showBackButton = true,
    this.selectedIndex = 0,
    this.onDrawerItemTap,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: showBackButton
            ? null
            : Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
        title: Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: AppDrawer(
        selectedIndex: selectedIndex,
        onNavigate: (index) {
          if (onDrawerItemTap != null) {
            onDrawerItemTap!(index);
          }
          Navigator.pop(context); // close drawer
        },
        userName: "Sumit",
        userEmail: "sumit@gmail.com",
        userImage:
            "https://i.pinimg.com/236x/c7/9a/37/c79a37e13ef14be556b51143bcbb1b01.jpg",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
