import 'package:flutter/material.dart';
import 'package:practice_flutter/utills/base_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productName;
  final String productDescription;
  final double productPrice;
  final String imageUrl;

  const ProductDetailScreen({
    super.key,
    this.productName = 'Sample Product',
    this.productDescription = 'This is a sample product description.',
    this.productPrice = 49.99,
    this.imageUrl =
        'https://www.bhmpics.com/downloads/apple-products-wallpaper/19.flat-lay-of-different-apple-products-on-a-grey-background.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Product',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                imageUrl,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              productName,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            Text(
              '\$${productPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 22, color: Colors.green),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blueAccent),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 16)),
                ),
                onPressed: () {},
                child: const Text('Add to Cart',style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
