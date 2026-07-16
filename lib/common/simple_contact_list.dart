import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/common_contact.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class SimpleContactList extends StatelessWidget {
  const SimpleContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "SimpleContactList",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CommonContact(
              name: "Asmit Dada",
              number: "98052314245",
              color: Colors.red,
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "Ayush baps",
              number: "9808013412",
              color: Colors.black,
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "Anuma ",
              number: "980213124315",
              color: Colors.pink,
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "Nishcal guiye",
              number: "98051314232414",
              color: Colors.green,
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "Daniel dalal",
              number: "980531234123",
              color: Colors.purple,
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "Sujita pandu",
              number: "98058141513241",
              color: const Color.fromARGB(217, 163, 142, 3),
            ),
            Divider(thickness: 3),
            CommonContact(
              name: "ram",
              number: "9805612312451",
              color: Colors.brown,
            ),
            Divider(thickness: 3),
            CommonContact(name: "shyam", number: "980512312412"),
            Divider(thickness: 3),
          ],
        ),
      ),
    );
  }
}
