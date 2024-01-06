// import 'package:flutter/material.dart';
// import 'package:quizapp/models/quistion_model.dart';

// class View2 extends StatefulWidget {
//   const View2({super.key});

//   @override
//   State<View2> createState() => _View2State();
// }

// class _View2State extends State<View2> {
//   List<Quistion> quistionList = getQuistionList();
//   int curentQuistionIndex = 0;
//   int score = 0;
//   Answer? slelectedAnswer;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffDBDBDB),
//       appBar:AppBar(
//         leading: GestureDetector(
//           onTap: () {
//             if(curentQuistionIndex != 0){
//               setState(() {
//                 curentQuistionIndex --;
//               });
//             }
//           },
//           child: Icon(Icons.fork_left)),
//       ) ,
//       body: Padding(
//         padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'S I M P L E  Q U I Z',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22,
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Text(
//               '${curentQuistionIndex + 1}/ ${quistionList.length}',
//               style: const TextStyle(
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: Colors.white,
//               ),
//               child: Text(
//                 '${quistionList[curentQuistionIndex].quistionText}',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             // QuistionWidget(),
//             //////////////////////////////////////////////////////////////////////////////////////////////

//             _answerList(),
//             const SizedBox(height: 20,),
//             _nextBottun(),
//           ],
//         ),
//       ),
//     );
//   }

//   _answerList() {
//     return Column(
//       children: quistionList[curentQuistionIndex]
//           .quistionAnswersList
//           .map((e) => _answerBottum(e))
//           .toList(),
//     );
//   }

//   Widget _answerBottum(Answer answer) {
//     bool isSlected = answer == slelectedAnswer;
//     return Container(
//       margin: EdgeInsets.only(top: 10),
//       width: double.infinity,
//       height: 48,
//       child: ElevatedButton(
//         onPressed: () {
//           if(slelectedAnswer == null){
//             if(answer.isTrue){
//               score +=1;           }
//           }
//           setState(() {
//             slelectedAnswer = answer;
//           });
//         },
//         child: Text(
//           answer.answerText,
//           style:const TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         style: ElevatedButton.styleFrom(
//           // shape: const StadiumBorder(),
//           backgroundColor: isSlected? Colors.orangeAccent  : Colors.white,
//           foregroundColor: isSlected? Colors.white : Colors.black,
//         ),
//       ),
//     );
//   }
//   _nextBottun(){
//     bool isLastQuistion = false;
//           if(curentQuistionIndex == quistionList.length - 1){
//             isLastQuistion = true;
//           }
//     return SizedBox(
//       width: MediaQuery.sizeOf(context).width * .5,
//       child: ElevatedButton(
        
//           onPressed: () {
//           if(isLastQuistion){
//             showDialog(context: context, builder: (e) => _sowhScoreDialog());
//           }else{
//             setState(() {
//               slelectedAnswer = null;
//             curentQuistionIndex++;
//             });
//           }
//           },
//           child: Text(
//             isLastQuistion ? 'Submit' : 'Next',
//             style:const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           style: ElevatedButton.styleFrom(
//             // shape: const StadiumBorder(),
//             backgroundColor:    Colors.blue,
//             foregroundColor:   Colors.black,
//           ),
//         ),
//     );
//   }
//   _sowhScoreDialog(){
//     bool isPassd = false;
//     if(score > quistionList.length * .5){
//       isPassd = true;
//     }
//      String titel = isPassd? 'Passed' : 'Falid';
//     return AlertDialog(
//       shape: const StadiumBorder(),
//       title: Center(child: Text(titel + ' | score = $score / ${quistionList.length.toString()}')),
//     );
//   }
// }



// // class QuistionWidget extends StatelessWidget {
// //   QuistionWidget({super.key, required this.qurentQuistionIndex});
// //   int? qurentQuistionIndex;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Text(
// //           '${qurentQuistionIndex! + 1}/5',
// //           style: TextStyle(
// //             fontWeight: FontWeight.w500,
// //           ),
// //         ),
// //         SizedBox(
// //           height: 20,
// //         ),
// //         Container(
// //           width: double.infinity,
// //           padding: EdgeInsets.all(16),
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(8),
// //             color: Colors.white,
// //           ),
// //           child: Text(
// //             'This is the quistion',
// //             textAlign: TextAlign.center,
// //             style: TextStyle(
// //               fontSize: 18,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
