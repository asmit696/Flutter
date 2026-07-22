import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_brandbox.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> brands = [
      {"name": "Nike", "products": "30", "icon": Icons.shopping_bag},
      {"name": "Adidas", "products": "10", "icon": Icons.sports_soccer},
      {"name": "Caliber", "products": "3", "icon": Icons.watch},
      {"name": "Umbro", "products": "31", "icon": Icons.sports},
      {"name": "Apple", "products": "21", "icon": Icons.apple},
      {"name": "Samsung", "products": "310", "icon": Icons.phone_android},
      {"name": "Vivo", "products": "130", "icon": Icons.smartphone},
      {"name": "Ikea", "products": "230", "icon": Icons.chair},
      {"name": "Acer", "products": "320", "icon": Icons.laptop},
      {"name": "Lenovo", "products": "30", "icon": Icons.computer},
      {"name": "Jordon", "products": "130", "icon": Icons.hiking},
      {"name": "Puma", "products": "3", "icon": Icons.directions_run},
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 30),
            SizedBox(width: 20),
            CustomText(
              text: "Brand",
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            childAspectRatio: 2,
          ),
          itemCount: brands.length,
          itemBuilder: (context, index) {
            final brand = brands[index];

            return CustomBrandBox(
              brandName: "${brand["name"]}",
              totalProducts: "${brand["products"]}",
              icon: brand["icon"],
            );
          },
        ),
      ),
    );
  }
}
