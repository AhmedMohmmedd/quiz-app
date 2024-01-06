import 'package:flutter/material.dart';
import 'package:quizapp/models/quistion_model.dart';

class QuizeData extends ChangeNotifier {
  List<Quistion> quistionList = getQuistionList();
  int curentQuistionIndex = 0;
  int score = 0;
  Answer? slelectedAnswer;

  /* Is The Last Quesstion*/
  bool isLastQuesstion() {
    bool isLastQuistion = false;

    if (curentQuistionIndex == quistionList.length - 1) {
      isLastQuistion = true;
    }
    return isLastQuistion;
  }
   
   /* Go To Next Quistion*/
  void nextBottumFun() {
    slelectedAnswer = null;
    curentQuistionIndex++;
    notifyListeners();
  }

  /* Slect The Answer*/
  void slectedAnswerFun({Answer? answer}) {
    slelectedAnswer = answer;
    notifyListeners();
  }
}
