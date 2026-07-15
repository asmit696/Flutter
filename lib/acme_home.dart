import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class AcmeHome extends StatelessWidget {
  const AcmeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: CustomText(
            text: "Acme Home",
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            CustomText(text: "Team", fontSize: 30, fontWeight: FontWeight.bold),
            SizedBox(height: 5),
            Divider(thickness: 1),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.star),
                SizedBox(width: 5),
                Text("Whats New"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.flag),
                SizedBox(width: 5),
                Text("Missoin, Vision, Values"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.toys),
                SizedBox(width: 5),
                Text("Company Goals - 2026"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 5),
                Text("Employee Directory"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.mic),
                SizedBox(width: 5),
                Text("Recent Press"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.engineering),
                SizedBox(width: 5),
                Text("Engineer Wiki"),
              ],
            ),
            SizedBox(height: 30),

            CustomText(
              text: "Policies",
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            SizedBox(height: 5),
            Divider(thickness: 1),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.edit_document),
                SizedBox(width: 5),
                Text("Office Manual"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.train),
                SizedBox(width: 5),
                Text("Vacation"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.offline_bolt),
                SizedBox(width: 5),
                Text("Reques Time off"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.coffee),
                SizedBox(width: 5),
                Text("Benifit Policies"),
              ],
            ),
            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.money),
                SizedBox(width: 5),
                Text("Expense Policy"),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
