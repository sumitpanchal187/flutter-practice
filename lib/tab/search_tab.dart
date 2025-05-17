import 'package:flutter/material.dart';
import 'package:practice_flutter/utills/dashboard_screen.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Center(child: Text('Search Tab', style: TextStyle(fontSize: 24))));
  }
}
