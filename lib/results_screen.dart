import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer' : questions[i].answers[0],  // Au faite il a mis la premier des reponse vrai pour sa on shuffle pour pas que le user ne select que le first 
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("jnjndjed"),

            const SizedBox(height: 30),

            QuestionsSummary(
              getSummaryData()
            ),

            const SizedBox(height: 30),

            TextButton(
              onPressed: (){}, 
              child: const Text("Restart Quiz !")
            )
          ],
        ),
      ),
    );
  }
}