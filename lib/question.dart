import 'package:flutter/material.dart';
import 'package:quiz/answer_Button.dart';
import 'data/Question.dart';

// ignore: must_be_immutable
class Questions extends StatefulWidget {
  Questions(this.onSlectedAnswer, {super.key});

  void Function(String) onSlectedAnswer;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;

  void answerQuestion(String Answer) {
    widget.onSlectedAnswer(Answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                fontSize: 20,
                height: 4,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map(
                  (e) => Container(
                    margin: const EdgeInsets.all(10),
                    child: AnswerButton(
                      answerText: e,
                      onPressed: () => answerQuestion(e),
                    ),
                  ),
                ),
          ]),
    );
  }
}
