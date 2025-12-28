import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';
import 'package:quizapp/summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.selectedAnswer,this.switchScreen, {super.key});
  final void Function() switchScreen; 
  final List<String> selectedAnswer;
  final List<Map<String, Object>> summary = [];

  List<Map<String, Object>> getSummary() {
    for (int i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Summary(getSummary()),
            TextButton.icon(
              onPressed: switchScreen,
              label: Text("Restart Quiz"),
              icon: Icon(Icons.restart_alt_sharp),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
