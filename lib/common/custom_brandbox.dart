import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class CustomBrandBox extends StatelessWidget {
  final String brandName;
  final String totalProducts;
  final IconData icon;

  const CustomBrandBox({
    super.key,
    required this.brandName,
    required this.totalProducts,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.white, size: 50),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(text: brandName),
                    SizedBox(width: 10),
                    Icon(Icons.verified, color: Colors.blue, size: 15),
                  ],
                ),
                CustomText(text: "$totalProducts products", fontSize: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
