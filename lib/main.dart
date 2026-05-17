import 'package:assignment1/screens/homescreen.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const CardConnect());
}
class CardConnect extends StatelessWidget {
  const CardConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CardConnect",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
