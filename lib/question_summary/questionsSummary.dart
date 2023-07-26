import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_summary/summaryItem.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data: data);
          }).toList(),
        ),
      ),
    );
  }
}
