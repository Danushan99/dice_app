import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "start screen",
      style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),
    ));
  }
}
