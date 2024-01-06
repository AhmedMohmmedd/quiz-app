
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';
import 'package:quizapp/models/quistion_model.dart';

class AnswerBottum extends StatelessWidget {
 const AnswerBottum({super.key, required this.answer});
     final Answer answer ;


  @override
  Widget build(BuildContext context) {
    bool isSlected = answer == Provider.of<QuizeData>(context).slelectedAnswer;
    return Consumer<QuizeData>(
      builder: (context, quizeData, child) {
        return Container(
          margin: const EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              if (quizeData.slelectedAnswer == null) {
                if (answer.isTrue) {
                  quizeData.score += 1;
                }
              }
              quizeData.slectedAnswerFun(answer: answer);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: isSlected ? Colors.orangeAccent : Colors.white,
              foregroundColor: isSlected ? Colors.white : Colors.black,
            ),
            child: Text(
              answer.answerText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
    
  }
}

 
