import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 73, 234, 213).withOpacity(0.5),
          ),
          const SizedBox(height: 20),
          const Text(
            '**Quiz Flutter**',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 165, 227, 237)),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right_alt_outlined),
              label: const Text(
                'Start Quiz',
              ))
        ],
      ),
    );
  }
}
