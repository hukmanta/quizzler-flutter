import 'package:flutter/widgets.dart';
import 'package:quizzler/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// ignore: camel_case_types
class Quiz_Brain {

  List<Icon> _scoreKeeper = [];
  int _questionNumber = 0;

  final List<Question> _question = [
    Question(questionText: 'Some cats are actually allergic to humans', questionAnswer: true),
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', questionAnswer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', questionAnswer: true),
    Question(questionText: 'It is illegal to pee in the Ocean in Portugal.',questionAnswer:  true),
    Question(questionText: 'No piece of square dry paper can be folded in half more than 7 times.', questionAnswer: false),
    Question(questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(questionText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        questionAnswer: false),
    Question(questionText: 'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer:  true),
    Question(questionText: 'Google was originally called \"Backrub\".', questionAnswer: true),
    Question(questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(questionText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
  ];

  String getQuestionText() => _question[_questionNumber].questionText;

  void nextQuestion(BuildContext context){
    _questionNumber++;
    if (_questionNumber > getSize()-1){
      Alert(context: context, title: 'Finished', desc: 'You\'ve reached end of the quiz').show();
      _questionNumber = 0;
      _scoreKeeper = [];
    }
  }

  bool getAnswer() => _question[_questionNumber].questionAnswer;

  int getSize() => _question.length;

  List<Icon> getScoreKeeper() => _scoreKeeper;

  void addScoreKeeper(Icon icon){
    _scoreKeeper.add(icon);
  }
}
