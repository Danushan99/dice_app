import 'package:dice_app/data/questions.dart';
import 'package:dice_app/question_summery.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.selectedAnswers, required this.onRestart});

  final List<String> selectedAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummery() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summeryData = getSummery();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectQuestions = summeryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          padding: const EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Your answer $numOfCorrectQuestions out of $numOfTotalQuestions qustions are correct ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              QuestionSummery(getSummery()),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  onRestart();
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 38, 1, 105),
                    foregroundColor: Colors.white),
              ),
            ],
          ),
        ));
  }
}
