import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_order_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> orders = [
      {
        "id": "2345",
        "orderDate": "Mon. July 3rd",
        "weight": "2.5lbs",
        "price": "\$1.50",
        "status": "Shipped",
      },
      {
        "id": "2346",
        "orderDate": "Tue. July 4th",
        "weight": "1.8lbs",
        "price": "\$2.75",
        "status": "Accepted",
      },
      {
        "id": "2347",
        "orderDate": "Wed. July 5th",
        "weight": "3.2lbs",
        "price": "\$4.20",
        "status": "Shipped",
      },
      {
        "id": "2348",
        "orderDate": "Thu. July 6th",
        "weight": "5.0lbs",
        "price": "\$6.80",
        "status": "Shipped",
      },
      {
        "id": "2349",
        "orderDate": "Fri. July 7th",
        "weight": "2.1lbs",
        "price": "\$3.40",
        "status": "Shipped",
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Icon(Icons.keyboard_arrow_left, size: 50)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),

        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     CustomText(
        //       text: "Recent Orders",
        //       fontSize: 25,

        //       fontWeight: FontWeight.bold,
        //     ),
        //     CustomText(
        //       text: "Below are your most recent orders",
        //       color: const Color.fromARGB(255, 44, 44, 44),
        //       fontSize: 15,
        //       fontWeight: FontWeight.w500,
        //     ),
        //     SizedBox(height: 20),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            final order = orders[index];
            return Column(
              children: [
                CustomOrderCard(
                  id: "${order["id"]}",
                  date: "${order["orderDate"]}",
                  price: "${order["price"]}",
                  weight: "${order["weight"]}",
                  status: "${order["status"]}",
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
        // CustomOrderCard(),
        // SizedBox(height: 20),
        // CustomOrderCard(),
        // SizedBox(height: 20),
        // CustomOrderCard(),
        //       ],
        //     ),
        //   ),
        // );
      ),
    );
  }
}
