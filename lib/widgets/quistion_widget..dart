
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';

class QuisitonWidget extends StatelessWidget {
  const QuisitonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Text(
        Provider.of<QuizeData>(context).quistionList[Provider.of<QuizeData>(context).curentQuistionIndex].quistionText,
        textAlign: TextAlign.center,
        style:const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

