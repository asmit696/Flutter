import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class Customformfield extends StatelessWidget {
  final String hintText;
  final bool ispassword;
  const Customformfield({
    super.key,
    required this.hintText,
    required this.ispassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ispassword,
      decoration: InputDecoration(
        hint: CustomText(
          text: hintText,
          color: const Color.fromARGB(31, 7, 7, 7),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 9, 209, 59),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 108, 189, 71),
          ),
        ),
      ),
    );
  }
}
