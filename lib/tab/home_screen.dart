import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_flutter/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(controller.error);
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      } else if (controller.error.isNotEmpty) {
        return Center(child: Text(controller.error.value));
      } else {
        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final product = controller.posts[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title ?? 'No Title',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      product.description ?? 'No Description',
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Price: \$${product.price?.toStringAsFixed(2) ?? 'N/A'}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (product.image != null)
                      Center(
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                            product.image!,
                            fit: BoxFit.contain,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Padding(
                                padding: const EdgeInsets.all(45.0),
                                child: const CircularProgressIndicator(
                                  strokeWidth: 4,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        );
      }
    });
  }
}
