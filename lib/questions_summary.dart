import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: data['user_answer'] == data['correct_answer']
                      ? Colors.green
                      : Colors.red,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      data['question'] as String,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
