import 'package:flutter/material.dart';

class CommonContact extends StatelessWidget {
  final String name;
  final String number;
  final Color color;
  const CommonContact({
    super.key,
    required this.name,
    required this.number,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: color,
              ),
            ),
            Positioned(
              top: 2,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(name), Text(number)],
        ),
        Spacer(),
        Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
