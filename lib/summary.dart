import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';

class Summary extends StatelessWidget {
  const Summary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    final numberOfQuestion = questions.length;
    final numberOfCorrectQuestion = summary.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered $numberOfCorrectQuestion out of $numberOfQuestion correctly",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 24),

            // 📋 Summary List
            ...summary.map((data) {
              final bool isCorrect =
                  data['user_answer'] == data['correct_answer'];

              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E2C),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🔢 Index Badge
                    Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isCorrect
                            ? Colors.green.shade600
                            : Colors.red.shade600,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    // 📄 Content
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Question
                          Text(
                            data['question'].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(height: 8),

                          // Correct Answer
                          Text(
                            "Correct answer: ${data['correct_answer']}",
                            style: TextStyle(
                              color: Colors.green.shade300,
                              fontSize: 14,
                            ),
                          ),

                          const SizedBox(height: 4),

                          // User Answer
                          Text(
                            "Your answer: ${data['user_answer']}",
                            style: TextStyle(
                              color: isCorrect
                                  ? Colors.green.shade300
                                  : Colors.red.shade300,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
