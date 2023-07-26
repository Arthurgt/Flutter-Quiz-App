import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'].toString()),
                      SizedBox(height: 5),
                      Text(data['user_answer'].toString()),
                      Text(data['correct_answer'].toString())
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
