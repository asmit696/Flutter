import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_text.dart';
import 'package:flutter_application_1/product_details.dart';

class CustomProductCard extends StatelessWidget {
  final String name;
  final String price;
  final Image image;

  const CustomProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ProductDetailPage(name: name, price: price, image: image),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.favorite_border, color: Colors.grey),
              ),

              Expanded(
                child: Center(child: SizedBox(height: 120, child: image)),
              ),

              const SizedBox(height: 10),

              CustomText(
                text: name,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),

              const SizedBox(height: 4),

              CustomText(
                text: price,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
