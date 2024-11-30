import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 38, 1, 105),
          foregroundColor: Colors.white),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
