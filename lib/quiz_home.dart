import 'package:flutter/material.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() {
    return _QuizHomeState();
  }
}

class _QuizHomeState extends State<QuizHome> {
  void startQuiz() {
    setState(() {
      print('Start Quiz Button Pressed!');
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize:  MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: startQuiz,
          child: const Text(
            'Start Quiz!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}