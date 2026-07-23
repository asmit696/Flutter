// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/login_page.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'My App', home: const LoginPage());
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/counter_provider.dart';
import 'package:flutter_application_1/screens/expanded_demo.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Learning flutter', home: ExpandedDemo());
  }
}
