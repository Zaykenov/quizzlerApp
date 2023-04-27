import 'questions.dart';

class QuizBrain {
  int _questionIndex = 0;

  List<Question> _qAnswer = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Are you gay?', false),
    Question('Are you sure?', true),
    Question('You are gay', true),
  ];
  void nextQ() {
    if (_questionIndex < _qAnswer.length - 1) {
      _questionIndex++;
    }
  }

  String getQuestion() {
    return _qAnswer[_questionIndex].question;
  }

  bool getAnswer() {
    return _qAnswer[_questionIndex].answer;
  }

  bool isFinised() {
    if (_questionIndex < _qAnswer.length - 1) {
      return false;
    }
    return true;
  }

  void reset() {
    if (isFinised() == true) {
      _questionIndex = 0;
    }
  }
}
