class Question {
  // these are class properties
  String questionText;
  bool questionAnswer;

  // Inorder to give value to our variables we need to create constructor for this class.
  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
