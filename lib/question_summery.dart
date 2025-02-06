import 'package:dice_app/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery({super.key, required this.summeryData});
  final List<Map<String, Object>> summeryData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summeryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(((data['question'] as int) + 1).toString()),
                SizedBox(
                  height: 5,
                ),
                Text(((data['correct_answer'] as int) + 1).toString()),
                Text(((data['user_answer'] as int) + 1).toString()),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}
