import 'package:flutter/material.dart';
import '../model/submission.dart';
import '../model/quiz.dart';

class ResultScreen extends StatelessWidget {
  final Submission submission;
  final Quiz quiz;

  ResultScreen({
    required this.submission,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz Result")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You scored: ${submission.getScore()}/${quiz.questions.length}'),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
