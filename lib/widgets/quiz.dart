import 'package:dice_app/start_screen.dart';
import 'package:dice_app/widgets/qustions_screen.dart';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget activScreen = StartScreen();

  void switchScreen() {
    setState(() {
      activScreen = QuesrionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80),
          Text(
            "Leaarn flutter in fun way",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.play_circle_outline_outlined),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: Text("Start Quiz"))
        ],
      ),
    );
  }
}
