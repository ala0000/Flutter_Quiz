import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/Result.dart';
import 'package:quiz/data/Question.dart';
import 'package:quiz/home.dart';
import 'package:quiz/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    log(answer);
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = Result(selectedAnswer, restart);
      });
    }
    log(selectedAnswer.toString());
  }

  void restart() {
    selectedAnswer = [];
    setState(() {
      activeScreen = Home(switchScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purpleAccent,
            ]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
