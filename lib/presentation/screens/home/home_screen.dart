import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Screen ",
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
      ),
    );
  }
}
