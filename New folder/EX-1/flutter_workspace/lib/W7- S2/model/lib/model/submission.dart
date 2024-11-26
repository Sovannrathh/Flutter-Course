import 'quiz.dart'; // To reference the Question class

class Answer {
  final Question question;    // Reference to the associated Question
  String questionAnswer;      // User's selected answer

  Answer({
    required this.question,
    required this.questionAnswer,
  });

  /// Checks if the answer is correct
  bool isCorrect() {
    return question.goodAnswer == questionAnswer; // Compare with the correct answer
  }
}

class Submission {
  final List<Answer> answers = []; // List to store the answers

  /// Add or update an answer for a specific question
  void addAnswer(Question question, String answerText) {
    // Check if an answer for this question already exists
    Answer? existingAnswer = getAnswerFor(question);

    if (existingAnswer != null) {
      // Update the existing answer
      existingAnswer.questionAnswer = answerText;
    } else {
      // Add a new answer
      answers.add(Answer(question: question, questionAnswer: answerText));
    }
  }

  /// Retrieve the answer related to the given question. Returns null if no match
  Answer? getAnswerFor(Question question) {
    return answers.firstWhere(
      (answer) => answer.question == question, 
      orElse: () => null
    );
  }

  /// Calculate the total score based on correct answers
  int getScore() {
    int score = 0;
    for (var answer in answers) {
      if (answer.isCorrect()) {
        score++; // Increment score for correct answers
      }
    }
    return score;
  }

  /// Remove all answers
  void removeAnswers() {
    answers.clear(); // Clear the answers list
  }
}
