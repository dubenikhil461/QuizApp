import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';
import 'package:quizapp/result_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizScreen(); // _ make it private
  }
}

class _QuizScreen extends State<Quiz> {
  // Widget? active_Screen;
  var activeScreen = "startscreen";
  // @override
  // use when u want run something Once
  // void initState() {
  //   active_Screen = StartScreen(SwitchScreen);
  //   super.initState();
  // }
  List<String> selectedAnswer = [];

  void switchScreen() {
    setState(() {
      activeScreen = "QuestionsScreen";
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length == questions.length){
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen,selectedAnswer);

    if(activeScreen == 'QuestionsScreen' ){
      screenWidget = QuestionsScreen(onSelectedAnswer : chooseAnswer);
    }
    if(activeScreen == 'result-screen'){
      screenWidget = ResultScreen(selectedAnswer,switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
