import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class CustomOrderCard extends StatelessWidget {
  final String id;
  final String date;
  final String weight;
  final String price;
  final String status;

  const CustomOrderCard({
    super.key,
    required this.id,
    required this.date,
    required this.price,
    required this.status,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomText(text: "Order #: ", fontWeight: FontWeight.w600),
                  CustomText(
                    text: id,
                    color: const Color.fromARGB(255, 101, 1, 34),
                  ),
                ],
              ),
              CustomText(
                text: date,
                color: const Color.fromARGB(137, 1, 43, 68),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 164, 206, 240),
                ),
                child: CustomText(text: weight, fontSize: 15),
              ),
            ],
          ),
          Column(
            children: [
              CustomText(
                text: price,

                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 164, 206, 240),
                ),
                child: CustomText(text: status, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
