// import 'package:flutter/material.dart';
// import 'model/quiz.dart'; 
// import 'model/submission.dart'; 
// import 'screens/welcome_screen.dart'; 
// import 'screens/question_screen.dart'; 
// import 'screens/result_screen.dart'; 
// enum QuizState {
//   notStarted,
//   started,
//   finished,
// }
// void main() {
//   runApp(QuizApp());
// }

// class QuizApp extends StatefulWidget {
//   @override
//   _QuizAppState createState() => _QuizAppState();
// }

// class _QuizAppState extends State<QuizApp> {
//   QuizState quizState = QuizState.notStarted; 
//   late Quiz quiz;
//   late Submission submission;

//   @override
//   void initState() {
//     super.initState();
//     quiz = Quiz(
//       title: "Flutter Quiz",
//       questions: [
//         Question(
//           title: "What is Flutter?",
//           possibleAnswers: ["SDK", "Framework", "Language"],
//           goodAnswer: "SDK",
//         ),
//         Question(
//           title: "What language does Flutter use?",
//           possibleAnswers: ["Dart", "Java", "C++"],
//           goodAnswer: "Dart",
//         ),
//       ],
//     );
//     submission = Submission();
//   }

//   @override
//   Widget build(BuildContext context) {
//     switch (quizState) {
//       case QuizState.notStarted:
//         return WelcomeScreen(
//           onStart: _startQuiz,
//         );
//       case QuizState.started:
//         return QuestionScreen(
//           quiz: quiz,
//           submission: submission,
//           onAnswerSelected: _submitAnswer,
//           onFinish: _finishQuiz,
//         );
//       case QuizState.finished:
//         return ResultScreen(
//           submission: submission,
//           quiz: quiz,
//         );
//     }
//   }


//   void _startQuiz() {
//     setState(() {
//       quizState = QuizState.started;
//     });
//   }

//   void _submitAnswer(Question question, String answer) {
//     setState(() {
//       submission.addAnswer(question, answer);
//     });
//   }

//   // Finish the quiz and show results
//   void _finishQuiz() {
//     setState(() {
//       quizState = QuizState.finished;
//     });
//   }
// }