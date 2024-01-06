import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/controler/qize_data.dart';
import 'package:quizapp/widgets/answer_list.dart';
import 'package:quizapp/widgets/next_bottun.dart';
import 'package:quizapp/widgets/quistion_widget..dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'S I M P L E  Q U I Z',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${Provider.of<QuizeData>(context).curentQuistionIndex + 1}/ ${Provider.of<QuizeData>(context).quistionList.length}',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const QuisitonWidget(),
            const AnswerList(),
            const SizedBox(
              height: 20,
            ),
            const NextBottun(),
          ],
        ),
      ),
    );
  }
}
