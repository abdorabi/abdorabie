// import 'package:flutter/material.dart';

// class MainApp extends StatefulWidget {
//   final String bottonTittle;
//   MainApp({super.key, this.bottonTittle = "Abdo"});

//   @override
//   State<MainApp> createState() => MianAppState();
// }

// class MianAppState extends State<MainApp> {
//   //properties
//   String title = 'Sign In';
//   String option = 'Sign Up';
//   String buttonText = 'Login';
//   bool isLogin = true;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passWordController = TextEditingController();
//   // constructor
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             margin: const EdgeInsets.only(left: 40, right: 40),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 70,
//                 ),
//                 Text(
//                   title,
//                   style: const TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blueAccent),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 TextField(
//                   obscureText: true,
//                   controller: emailController,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   obscureText: true,
//                   controller: passWordController,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           if (isLogin) {
//                             buttonText = 'SignUp';
//                             title = 'Register';
//                             option = 'Sigin';
//                             isLogin = false;
//                           } else {
//                             buttonText = 'Login';
//                             title = 'SignIn';
//                             option = 'signup';
//                             isLogin = true;
//                           }
//                         });
//                       },
//                       child: Text(
//                         option,
//                         style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey,
//                             decoration: TextDecoration.underline),
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       if (emailController.text.isEmpty ||
//                           passWordController.text.isEmpty) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             backgroundColor: Colors.red,
//                             content: Text("erro"),
//                           ),
//                         );
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             backgroundColor: Color.fromARGB(255, 10, 146, 51),
//                             content: Text("welcom"),
//                           ),
//                         );
//                       }
//                     },
//                     child: Text(buttonText,
//                         style: TextStyle(
//                           fontSize: 40,
//                           fontWeight: FontWeight.w300,
//                           color: Colors.white,
//                         )),
//                     style: const ButtonStyle(
//                         backgroundColor:
//                             MaterialStatePropertyAll(Colors.blue))),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
