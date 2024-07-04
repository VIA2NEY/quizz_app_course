import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {

    final currentQuestion = questions;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text(
              currentQuestion[0].text,
              style: const TextStyle(
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),
        
            ... currentQuestion[0].getShuffleAnswers().map((item) {
                return AnswerButton(
                  answerText: item,
                  onTap: (){},
                );
              },
            ),
        
          ],
        ),
      ),
    );
  }
}