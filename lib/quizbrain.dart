

import 'package:flutter/cupertino.dart';

import 'question.dart';


class QuizBrain{
  int _questionTracker = 0;
  List<Question> _qaList=[
    Question('Buddha was born in India', false),
    Question('Earth in round',true),
    Question('Dart is easy',true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),

  ];

  void nextQuestion(){
    if(_questionTracker<_qaList.length-1){
      _questionTracker++;
    }

  }



  String getQuestionText(){
    return _qaList[_questionTracker].questionText;
  }
  bool getAnswer(){
    return _qaList[_questionTracker].questionAnswer;
  }

  bool isFinished(){
    if(_questionTracker>=_qaList.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionTracker=0;
  }

}