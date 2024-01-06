import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';
import 'package:quizapp/widgets/answer_bottum.dart';

class AnswerList extends StatelessWidget {
  const AnswerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Provider.of<QuizeData>(context)
          .quistionList[Provider.of<QuizeData>(context).curentQuistionIndex]
          .quistionAnswersList
          .map((e) =>  AnswerBottum(answer: e,))
          .toList(),
    );
  }
}
