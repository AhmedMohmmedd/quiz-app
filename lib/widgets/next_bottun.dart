import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';
import 'package:quizapp/widgets/sowh_score_dialog.dart';

class NextBottun extends StatelessWidget {
  const NextBottun({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizeData>(builder: (context, quizeData, child) {
      return SizedBox(
        width: MediaQuery.sizeOf(context).width * .5,
        child: ElevatedButton(
          onPressed: () {
            if (quizeData.isLastQuesstion()) {
              showDialog(context: context, builder: (e) => const SowhScoreDialog());
            } else {
              quizeData.nextBottumFun();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
          ),
          child: Text(
            quizeData.isLastQuesstion() ? 'Submit' : 'Next',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    });
  }
}
