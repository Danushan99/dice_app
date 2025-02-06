import 'package:dice_app/data/questions.dart';
import 'package:dice_app/start_screen.dart';
import 'package:dice_app/widgets/qustions_screen.dart';
import 'package:dice_app/widgets/results_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void choosedAnswers(String answers) {
    selectedAnswer.add(answers);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void reStartQuiz() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswer = [];
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: choosedAnswers,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultsScreen(
        selectedAnswers: selectedAnswer,
        onRestart:reStartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
