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
  final List<Answer> answers = [];

 
  void addAnswer(Question question, String answerText) {
   
    Answer? existingAnswer = getAnswerFor(question);

    if (existingAnswer != null) {
     
      existingAnswer.questionAnswer = answerText;
    } else {
      
      answers.add(Answer(question: question, questionAnswer: answerText));
    }
  }

 
  Answer? getAnswerFor(Question question) {
    return answers.firstWhere(
      (answer) => answer.question == question, 
      orElse: () => null
    );
  }

  int getScore() {
    int score = 0;
    for (var answer in answers) {
      if (answer.isCorrect()) {
        score++; 
      }
    }
    return score;
  }


  void removeAnswers() {
    answers.clear(); 
  }
}
