
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';

class SowhScoreDialog extends StatelessWidget {
  const SowhScoreDialog({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPassd = false;
    if (Provider.of<QuizeData>(context).score >
        Provider.of<QuizeData>(context).quistionList.length * .5) {
      isPassd = true;
    }
    String titel = isPassd ? 'Passed' : 'Falid';
    return Consumer<QuizeData>(
      builder: (context, quizeData, child) {
        return AlertDialog(
          shape: const StadiumBorder(),
          title: Center(
            child: Text(
                '$titel | score = ${quizeData.score} / ${quizeData.quistionList.length.toString()}'),
          ),
        );
      },
    );
  }
}
