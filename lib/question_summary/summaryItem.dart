import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_summary/questionIndex.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndex(
            questionIndex: data['question_index'] as int,
            isCorrectAnswer: data['user_answer'] == data['correct_answer'],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data['question'].toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    )),
                const SizedBox(height: 5),
                Text(data['user_answer'].toString(),
                    style:
                        TextStyle(color: Color.fromARGB(255, 150, 197, 241))),
                Text(data['correct_answer'].toString(),
                    style: TextStyle(color: Color.fromARGB(255, 150, 241, 198)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
