import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.green,
            child: const Center(
                child: Text('Expanded - fills all remaining space')),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
              height: 680,
              child:
                  const Center(child: Text('Flexible - shares leftover space')),
            ),
          ),
        ],
      ),
    );
  }
}
