// import 'package:flutter/material.dart';
// import 'game_screen.dart';

// class LevelSelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Escolha o Nível'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => GameScreen(minNumber: 1, maxNumber: 50),
//                   ),
//                 );
//               },
//               child: Text('Nível Fácil (1-50)'),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => GameScreen(minNumber: 1, maxNumber: 100),
//                   ),
//                 );
//               },
//               child: Text('Nível Médio (1-100)'),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => GameScreen(minNumber: 1, maxNumber: 200),
//                   ),
//                 );
//               },
//               child: Text('Nível Difícil (1-200)'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
