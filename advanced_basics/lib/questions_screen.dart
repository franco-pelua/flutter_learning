import 'package:flutter/material.dart';
import 'package:advanced_basics/answer_button.dart';
import 'package:advanced_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

const double _sizedBoxHeight = 30;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState({key}) {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: _sizedBoxHeight,
          ),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(
              answer,
              () {
                answerQuestion(answer);
              },
            );
          })
        ],
      ),
    );
  }
}
