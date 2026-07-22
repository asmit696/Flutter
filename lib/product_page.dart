import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_product_card.dart';
import 'package:flutter_application_1/core/app_image.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe1)},
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe2)},
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe3)},
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe4)},
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe5)},
      {"name": "Nike", "price": "\$24.0", "image": Image.asset(AppImage.shoe6)},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: .72,
          ),
          itemBuilder: (context, index) {
            final product = products[index];

            return CustomProductCard(
              name: product["name"],
              price: product["price"],
              image: product["image"],
            );
          },
        ),
      ),
    );
  }
}
