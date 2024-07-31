import 'package:flutter/material.dart';
import 'package:advanced_basics/answer_button.dart';
import 'package:advanced_basics/data/questions.dart';

const double _sizedBoxHeight = 30;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState({key}) {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: _sizedBoxHeight,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(answer, () {});
          })
        ],
      ),
    );
  }
}
