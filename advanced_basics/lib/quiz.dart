import 'package:advanced_basics/home.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.deepPurple, Colors.purple]),
          ),
          child: activeScreen == 'home'
              ? Home(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
