import 'package:flutter/material.dart';

class Answers extends StatelessWidget{
  const Answers({super.key, required this.answer, required this.onTap}); // named argument 
  // Answers(required this.answer, required this.onTap,{super.key}); // position argument 

  final String answer;
  final void Function() onTap;
  @override
  Widget build(context){
    return  ElevatedButton(
        onPressed: onTap, 
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 3, 39, 71),
          foregroundColor:  const Color.fromARGB(255, 227, 232, 235),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        ),
        child: Text(answer,textAlign: TextAlign.center,));
  }

}