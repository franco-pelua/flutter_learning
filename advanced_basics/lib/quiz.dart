import 'package:advanced_basics/home.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/results.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'home';

  void switchScreen(String screenName) {
    setState(() {
      activeScreen = screenName;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      switchScreen('results_screen');
    }
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
            child: switch (activeScreen) {
              'home' => Home(
                  switchScreen,
                ),
              'questions_screen' => QuestionsScreen(
                  onSelectAnswer: chooseAnswer,
                ),
              'results_screen' => ResultsScreen(
                  chosenAnswers: selectedAnswers,
                ),
              _ => Home(switchScreen),
            }),
      ),
    );
  }
}
