// import 'package:flutter/material.dart';

// class New extends StatefulWidget {
//   const New({super.key});

//   @override
//   State<New> createState() => _NewState();
// }

// class _NewState extends State<New> {
//   final TextEditingController numcon = TextEditingController();
//   void dialog() {
//     double num = double.tryParse(numcon.text) ?? 0.0;
//     String r = '';
//     // if (num == 17) {
//     //   r = 'your win';
//     // } else if (num > 17) {
//     //   r = 'number is too high';
//     // } else if (num <= 17) {
//     //   r = 'too low';
//     // } else {
//     //   r = 'your loose';
//     // }
//     // switch (num) {
//     //   case 17:
//     //     r = 'you win';
//     //     break;
//     //   case < 17:
//     //     r = 'you win';
//     //     break;
//     //   case 17:
//     //     r = 'you win';
//     //     break;
//     //   default:
//     //     r = '';

//     // }

//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             content: Text(r),
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextField(
//             controller: numcon,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 dialog();
//               },
//               child: Text('Check'))
//         ],
//       ),
//     );
//   }
// }
