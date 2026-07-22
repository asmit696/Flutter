import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_form_field.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Welcome", fontSize: 30),
            SizedBox(height: 10),
            CustomText(
              text: "Enter Your email address to signin",
              color: const Color.fromARGB(255, 177, 165, 165),
            ),
            CustomText(
              text: "Enjoy your food ",
              color: const Color.fromARGB(255, 177, 165, 165),
            ),
            SizedBox(height: 30),
            Customformfield(hintText: "enter your email", ispassword: false),
            SizedBox(height: 20),
            Customformfield(hintText: "enter your password", ispassword: true),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: CustomText(
                text: "Forogt Password?",
                color: const Color.fromARGB(96, 80, 72, 72),
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomText(text: "Signin", color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "Dont have an account?"),
                SizedBox(width: 10),
                CustomText(
                  text: "Create Account",
                  color: Colors.green,
                  fontSize: 15,
                ),
              ],
            ),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.center,
              child: CustomText(text: "Or", fontSize: 15),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 26, 38, 109),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomText(
                    text: "Connect With Facebook",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 47, 109, 224),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: CustomText(
                    text: "Connect with Google",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
