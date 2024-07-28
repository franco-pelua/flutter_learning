import 'package:flutter/material.dart';

const double sizedBoxHeight = 40;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
        ),
        const SizedBox(height: sizedBoxHeight),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 28)),
        const SizedBox(height: sizedBoxHeight),
        OutlinedButton(
            onPressed: () {},
            child: const Text('Start quiz',
                style: TextStyle(color: Colors.white, fontSize: 20)))
      ],
    );
  }
}
