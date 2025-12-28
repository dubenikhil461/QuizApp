import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.switchScreen,this.selectedAnswer,{super.key});
  final List<String> selectedAnswer;
  final void Function() switchScreen;
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(232, 237, 232, 232),
          ),
        const SizedBox(height: 80),   
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ),
          icon: Icon(Icons.arrow_right_alt,),
          label: Text('Start Quiz'))
      ],)
      );
  }
}