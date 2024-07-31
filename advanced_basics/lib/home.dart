import 'package:flutter/material.dart';

const double _sizedBoxHeight = 40;

class Home extends StatelessWidget {
  const Home(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
          color: const Color.fromARGB(250, 255, 255, 255),
        ),
        const SizedBox(height: _sizedBoxHeight),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 28)),
        const SizedBox(height: _sizedBoxHeight),
        OutlinedButton.icon(
          onPressed: startQuiz,
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            'Start quiz',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
