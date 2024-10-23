import 'package:flutter/material.dart';
import 'package:quiz/data/Question.dart';

class Result extends StatelessWidget {
  const Result(this.selectedAnswer, this.restart, {super.key});

  final List<String> selectedAnswer;
  final void Function() restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_Answer': questions[i].answers[0],
        'user_Answer': selectedAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;
    var numOfCorrectAnswer = 0;
    final summaryData = getSummaryData();
    for (var i = 0; i < selectedAnswer.length; i++) {
      if ((summaryData[i]['user_Answer'] == summaryData[i]['correct_Answer'])) {
        numOfCorrectAnswer++;
      }
    }
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numOfCorrectAnswer out of ${questions.length} questions correctly!',
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                height: 2.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.02),
            ...getSummaryData().map((data) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.04,
                      backgroundColor:
                          (data['user_Answer'] == data['correct_Answer'])
                              ? Colors.blueAccent
                              : Colors.redAccent,
                      child: Text(
                        (((data['question_index'] as int) + 1)).toString(),
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'].toString(),
                            style: TextStyle(
                              color: const Color.fromARGB(255, 250, 205, 254),
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Text(
                            'Correct Answer: ${data['correct_Answer']}',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                          Text(
                            'Your Answer: ${data['user_Answer']}',
                            style: TextStyle(
                              color:
                                  data['user_Answer'] == data['correct_Answer']
                                      ? Colors.blueAccent
                                      : Colors.redAccent,
                              fontSize: screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(height: screenHeight * 0.05),
            ElevatedButton(
              onPressed: restart,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.1),
              ),
              child: Text(
                'Restart The Quiz!',
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
