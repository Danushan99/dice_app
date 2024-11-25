import 'package:dice_app/data/questions.dart';
import 'package:dice_app/widgets/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: currentQuestions.answers[0], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[1], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[2], onTap: () {}),
          AnswerButton(answerText: currentQuestions.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
