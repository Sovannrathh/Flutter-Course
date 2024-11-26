class Question {
  final String title;                 // Question text
  final List<String> possibleAnswers; // List of possible answers
  final String goodAnswer;            // Correct answer

  Question({
    required this.title,
    required this.possibleAnswers,
    required this.goodAnswer,
  });
}

class Quiz {
  final String title;                // Title of the quiz
  final List<Question> questions;    // List of questions in the quiz

  Quiz({
    required this.title,
    required this.questions,
  });
}
