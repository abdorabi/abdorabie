// import 'package:amit_alex_4/components/app_button.dart';
// import 'package:amit_alex_4/components/profile_header.dart';
// import 'package:flutter/material.dart';

// class NewWidett extends StatelessWidget {
//   const NewWidett({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: const [
//           Icon(
//             Icons.image,
//             size: 30,
//           ),
//           SizedBox(
//             width: 20,
//           )
//         ],
//         centerTitle: true,
//         title: const Text(
//           'Abdo Rabie',
//           style: TextStyle(fontWeight: FontWeight.w600),
//         ),
//       ),
//       body: Column(children: [
//         const ProfileHeader(
//             CoverPic:
//                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRX540Q5sNOOCUxhTw2xN1OKS8uynhQ3i6VQ&usqp=CAU',
//             profilePic:
//                 'data:image/jpeg;base64,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'),
//         const SizedBox(
//           height: 85,
//         ),
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'AbdoRabie ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 30,
//               ),
//             ),
//             Icon(
//               Icons.verified,
//               color: Colors.blue,
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             AppButton(
//               title: 'Created',
//               buttonFunction: () {
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                   content: Text('abdorabie'),
//                   backgroundColor: Colors.amber,
//                 ));
//               },
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 8),
//               width: 55,
//               height: 40,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: const Color.fromARGB(255, 185, 185, 185)),
//               child: const Icon(Icons.settings),
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 8),
//               width: 55,
//               height: 40,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: const Color.fromARGB(255, 190, 190, 190)),
//               child: const Icon(Icons.more_horiz),
//             ),
//           ],
//         ),
//       ]),
//     );
//   }
// }
