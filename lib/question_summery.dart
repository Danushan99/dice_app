import 'package:flutter/material.dart';

class QuestionSummery extends StatelessWidget {
  const QuestionSummery(
    this.summeryData, {
    super.key,
  });
  final List<Map<String, Object>> summeryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map((data) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 12,
                              child: Text(((data['question_index'] as int) + 1)
                                  .toString())),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              (data['question'] as String),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                          'Correct answer: ${(data['correct_answer'] as String)}',
                          style: const TextStyle(
                              color: Colors.green, fontSize: 15)),
                      const SizedBox(
                        height: 5,
                      ),
                      Text('Your answer: ${(data['user_answer'] as String)}',
                          style: const TextStyle(
                              color: Color.fromRGBO(253, 202, 168, 1),
                              fontSize: 15)),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
