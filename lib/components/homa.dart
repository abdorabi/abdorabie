// import 'package:flutter/material.dart';

// class Homa extends StatelessWidget {
//   const Homa({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//             title: Text(
//               'Abdorabie128',
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             actions: [
//               Icon(
//                 Icons.add_circle_outline,
//                 size: 40,
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.article,
//                     size: 40,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 20,
//               ),
//             ]),
//         body: Column(children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 backgroundImage: NetworkImage(
//                     'https://instagram.fcai21-4.fna.fbcdn.net/v/t51.2885-19/342705241_1272027353392249_4934384486292570521_n.jpg?stp=dst-jpg_s320x320&efg=e30&_nc_ht=instagram.fcai21-4.fna.fbcdn.net&_nc_cat=101&_nc_ohc=m6L4J3-Xs1oAX8EqfFs&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAzy4bQ2yqvnQ4inpvy36blmuwTnVTY2pJKp4k6qv8RGw&oe=65B2B814&_nc_sid=8b3546'),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 'Abdo Rabie',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   color: Colors.white70,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 'Years..26 Sana',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   color: Colors.white70,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 'Ahlawy_Madride',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   color: Colors.white70,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Posts56',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   color: Colors.white70,
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 8),
//                 decoration: BoxDecoration(
//                   color: Colors.white70,
//                   borderRadius: BorderRadius.all(Radius.circular(5)),
//                 ),
//                 width: 300,
//                 height: 40,
//                 child: Center(
//                   child: GestureDetector(
//                     child: const Text(
//                       'Edit Profile',
//                       style: TextStyle(fontSize: 30, color: Colors.white70),
//                     ),
//                     onTap: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('abdorabie'),
//                           backgroundColor: Colors.amber,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 40,
//           ),
//         ]));
//   }
// }
