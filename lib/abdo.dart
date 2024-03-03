// import 'package:flutter/material.dart';

// class HomeWork extends StatelessWidget {
//   final String buttonTitle;
//   const HomeWork({this.buttonTitle = 'hello word'});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.access_time_filled_rounded),
//           onPressed: () {
//             print('AFB is pressed');
//           },
//           backgroundColor: Colors.white,
//         ),
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text('My First App'),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Image.asset('assets/R.jpeg', width: 100, height: 100),
//                   Image.asset('assets/OIP.jpeg', width: 100, height: 100),
//                   Image.asset('assets/IMG_7645.JPG', width: 100, height: 100),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   const Text('AbdoRabie',
//                       style:
//                           TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Text('jop',
//                       style: TextStyle(fontSize: 30, color: Colors.red)),
//                   const Text('Flutter Developer',
//                       style: TextStyle(fontSize: 20)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Text('age',
//                       style: TextStyle(fontSize: 30, color: Colors.red)),
//                   const Text('25:', style: TextStyle(fontSize: 20)),
//                 ],
//               ),
//               Row(
//                 children: [
//                   const Text('address',
//                       style: TextStyle(fontSize: 30, color: Colors.redAccent)),
//                   const Text('Damanhour', style: TextStyle(fontSize: 20)),
//                 ],
//               ),
//               ElevatedButton(onPressed: () {}, child: Text('Contact Me')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }













//import 'package:flutter/material.dart';

// class SignIn extends StatefulWidget {
//   @override
//   State<SignIn> createState() => SignInState();
// }

// class SignInState extends State<SignIn> {
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
//                           isLogin = false;
//                         } else {
//                           buttonText = 'Login';
//                           title = 'SignIn';
//                           option = 'signup';
//                           isLogin = true;
//                         }
//                       });
//                     },
//                     child: Text(
//                       option,
//                       style: const TextStyle(
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
//                     if (emailController.text.isEmpty ||
//                         passWordController.text.isEmpty) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           backgroundColor: Colors.red,
//                           content: Text('Error'),
//                         ),
//                       );
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         backgroundColor: Colors.green,
//                         content: Text(emailController.text),
//                       ));
//                       emailController.text = '';
//                     }
//                   },
//                   child: Text(buttonText,
//                       style: TextStyle(
//                         color: Colors.white,
//                       )),
//                   style: const ButtonStyle(
//                       backgroundColor: MaterialStatePropertyAll(Colors.blue))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
