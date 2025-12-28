import 'package:flutter/material.dart';
import 'package:quizapp/answers.dart';
import 'package:quizapp/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key , required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentquestionIndex = 0;

  void answerQuestion(answer){
    widget.onSelectedAnswer(answer);
    setState(() {
      if(currentquestionIndex < questions.length) {
        currentquestionIndex +=1;
        }
    });
  }
  
  @override
  Widget build(context) {
  final quizs = questions[currentquestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,// takes as much width it can
          children: [ 
            Text(
              quizs.text,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...quizs.getShuffled().map((answer) {
              return Answers(answer: answer, onTap:(){answerQuestion(answer);});
            }),
          ],
        ),
      ),
    );
  }
}
