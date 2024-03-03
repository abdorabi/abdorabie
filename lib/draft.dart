// import 'package:flutter/material.dart';

// class MainApp extends StatelessWidget {
//   final String buttonTitle;
//   const MainApp({this.buttonTitle = 'no Text'});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           floatingActionButton: FloatingActionButton(
//             child: const Icon(Icons.access_time_filled_rounded),
//             onPressed: () {
//               print('AFB is pressed');
//             },
//           ),
//           backgroundColor: Colors.green,
//           appBar: AppBar(
//             centerTitle: true,
//             title: Text('My First App'),
//           ),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.star),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Spacer(
//                     flex: 1,
//                   ),
//                   (Icon(Icons.star)),
//                   Spacer(
//                     flex: 1,
//                   ),
//                   Icon(Icons.star),
//                   Spacer(
//                     flex: 1,
//                   ),
//                 ],
//               )
//             ],
//           )),
//     );
//   }
// }
