import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/simple_contact_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'My App', home: const SimpleContactList());
  }
}
