// import 'package:flutter/material.dart';
// import '../model/quiz.dart'; // Import the Question model
// import '../model/submission.dart'; // Import the Submission model

// class QuestionScreen extends StatelessWidget {
//   final Quiz quiz;
//   final Submission submission;
//   final Function(Question, String) onAnswerSelected;
//   final VoidCallback onFinish;

//   QuestionScreen({
//     required this.quiz,
//     required this.submission,
//     required this.onAnswerSelected,
//     required this.onFinish,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Quiz: ${quiz.title}")),
//       body: Column(
//         children: [
//           for (var question in quiz.questions)
//             Column(
//               children: [
//                 Text(question.title),
//                 ...question.possibleAnswers.map(
//                   (answer) => ElevatedButton(
//                     onPressed: () {
//                       onAnswerSelected(question, answer);
//                     },
//                     child: Text(answer),
//                   ),
//                 ),
//               ],
//             ),
//           ElevatedButton(
//             onPressed: onFinish,
//             child: Text("Finish Quiz"),
//           ),
//         ],
//       ),
//     );
//   }
// }
