// import 'package:flutter/material.dart';

// class App extends StatefulWidget {
//   @override
//   State<App> createState() => MianAppState();
// }

// class MianAppState extends State<App> {
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
//     return Scaffold(
//       body: Center(
//         child: Container(
//           margin: const EdgeInsets.only(left: 40, right: 40),
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 70,
//               ),
//               Text(
//                 title,
//                 style: const TextStyle(fontSize: 40, color: Colors.blueAccent),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               TextField(
//                 controller: emailController,
//               ),
//               TextField(
//                 obscureText: true,
//                 controller: passWordController,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         if (option == 'Signup') {
//                           buttonText = 'SignUp';
//                           title = 'Register';
//                           option = 'Sigin';
//                          isLogin = false;
//                         } else {
//                           buttonText = 'Login';
//                           title = 'Sign In';
//                           option = 'signup';
//                           isLogin = true;
//                         }
//                       });
//                     },
//                     child: Text(
//                       option,
//                       style: TextStyle(
//                           color: Colors.grey,
//                           decoration: TextDecoration.underline),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text(emailController.text)));
//                     emailController.text = '';
//                   },
//                   child:Text(buttonText,style: TextStyle(color: Colors.white,)),
//                   style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue))
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
