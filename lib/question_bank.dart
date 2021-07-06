import 'package:destination/question_model.dart';

class QuestionAndAnswer {
  List<Question> _quesAndAnsData = [
    Question(
        questionText: "What is your Educational background",
        questionAnsOne: "General",
        questionAnsTwo: "Technical"),
    Question(
        questionText: "What is your golden career",
        questionAnsOne: "Service",
        questionAnsTwo: "Business "),
    Question(
        questionText: "Which one you want to be expert",
        questionAnsOne: "Software",
        questionAnsTwo: "Hardware "),
    Question(
        questionText: "Golden life",
        questionAnsOne: "",
        questionAnsTwo: "Good luck "),
    Question(
        questionText: "Super golden life",
        questionAnsOne: "",
        questionAnsTwo: "Enjoy"),
    Question(
        questionText: "Will be success",
        questionAnsOne: "",
        questionAnsTwo: "congrats "),
    Question(
        questionText: "Develop your own business",
        questionAnsOne: "",
        questionAnsTwo: "Bast of luck"),
  ];

  int _questionNumber = 0;

  getQuestionText() {
    return _quesAndAnsData[_questionNumber].questionText;
  }

  getQuestionAnsOne() {
    return _quesAndAnsData[_questionNumber].questionAnsOne;
  }

  getQuestionAnsTwo() {
    return _quesAndAnsData[_questionNumber].questionAnsTwo;
  }

  void nextStape(int ansNumber) {
    if (ansNumber == 1 && _questionNumber == 0) {
      _questionNumber = 1;
    } else if (ansNumber == 2 && _questionNumber == 0) {
      _questionNumber = 2;
    } else if (ansNumber == 1 && _questionNumber == 1) {
      _questionNumber = 3;
    } else if (ansNumber == 2 && _questionNumber == 1) {
      _questionNumber = 4;
    } else if (ansNumber == 1 && _questionNumber == 2) {
      _questionNumber = 5;
    } else if (ansNumber == 2 && _questionNumber == 2) {
      _questionNumber = 6;
    } else if (_questionNumber >= 3) {
      restart();
    }
  }

  void restart() {
    _questionNumber = 0;
  }

  bool showVisible() {
    if (_questionNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
}
