import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The question ...",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          const SizedBox(height: 30),
          
          AnswerButton(
            answerText: 'Answer 1',
            onTap: (){},
          ),
          AnswerButton(
            answerText: 'Answer 2',
            onTap: (){},
          ),
          AnswerButton(
            answerText: 'Answer 3',
            onTap: (){},
          ),

        ],
      ),
    );
  }
}