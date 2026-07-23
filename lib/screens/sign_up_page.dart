import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/custom_form_field.dart';
import 'package:flutter_application_1/common/custom_text.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CustomText(text: "Create Account", fontSize: 30),

            SizedBox(height: 10),

            CustomText(
              text: "Enter your Name, Email and Password",
              color: Color.fromARGB(255, 177, 165, 165),
            ),

            Row(
              children: [
                CustomText(
                  text: "for sign up. ",
                  color: Color.fromARGB(255, 177, 165, 165),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CustomText(
                    text: "Already have account?",
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Customformfield(hintText: "Full Name", ispassword: false),

            SizedBox(height: 20),

            Customformfield(hintText: "Email Address", ispassword: false),

            SizedBox(height: 20),

            Customformfield(hintText: "Password", ispassword: true),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),

                  child: CustomText(text: "SIGN UP", color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            Align(
              alignment: Alignment.center,
              child: CustomText(
                text:
                    "By Signing up you agree to our Terms\nConditions & Privacy Policy.",
                color: Color.fromARGB(255, 177, 165, 165),
                fontSize: 14,
              ),
            ),

            SizedBox(height: 20),

            Align(
              alignment: Alignment.center,
              child: CustomText(text: "Or", fontSize: 15),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 26, 38, 109),
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
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 47, 109, 224),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),

                  child: CustomText(
                    text: "Connect With Google",
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
