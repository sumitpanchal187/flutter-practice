import 'package:flutter/material.dart';

import '../utills/product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Home Tab',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          ElevatedButton(onPressed: () {
            // Navigate to the product detail screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductDetailScreen(),
              ),
            );
          }, child: Text("Click Here"))
        ],
      ),
    );
  }
}
