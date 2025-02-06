import 'package:dice_app/data/questions.dart';
import 'package:dice_app/question_summery.dart';
import 'package:dice_app/widgets/qustions_screen.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;
  List<Map<String, Object>> getSummery() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[1].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              const Text(
                'Results',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'List of answers and questions..!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              QuestionSummery(getSummery()),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Restart Quiz'),
              ),
            ],
          ),
        ));
  }
}
