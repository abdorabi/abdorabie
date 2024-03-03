import 'package:flutter/material.dart';
import 'package:phone_application/auth/view/sign_up.dart';
import 'package:phone_application/core/shared_preferences_helper.dart';
import 'package:phone_application/todo_app/date/view/screens/todo_screen.dart';

// ignore: must_be_immutable
class SignIn extends StatelessWidget {
  SignIn({super.key});

  String option = 'Sign Up';

  String title = 'Sign In';

  String button = 'Login';

  bool isSignIn=false;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          margin: const EdgeInsets.only(top: 150,left: 20 ,right:20 ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 71, 165, 241)),
                ),
              
                TextField(
                    controller: emailcontroller = TextEditingController(),
                    decoration: const InputDecoration(hintText: 'Email ')),
                TextField(
                  controller: Password = TextEditingController(),
                  obscureText: true,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
              
                Container(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()
                          ));
                        },
                        child: Text(
                          option,
                          style:
                              const TextStyle(decoration: TextDecoration.underline),
                        ))),
               
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [ ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 4, 58, 219))),
                    onPressed: () async {
                      if (emailcontroller.text == '' || Password.text == '') {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: const Text('pls enter your data'),
                          backgroundColor: Color.fromARGB(219, 213, 5, 5),
                        ));
                        emailcontroller.text = '';
                        Password.text = '';
                      } else {
                        ShareHelper.write('email', 'medhat.dart');
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TodoScreen()
                            ));
                      }
                    },
                    child: Text(
                      button,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
