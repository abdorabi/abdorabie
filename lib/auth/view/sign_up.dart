import 'package:flutter/material.dart';
import 'package:phone_application/auth/view/sign_In.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});


  String option = 'Sign In';

  String title = 'Sign Up';

  String button = 'Sign Up';
  

  TextEditingController emailcontroller = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
              width: 500,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 71, 165, 241)),
            ),
            const SizedBox(
              height: 50,
            ),
            TextField(
                controller: emailcontroller = TextEditingController(),
                decoration: const InputDecoration(hintText: 'Email ')),
            TextField(
              controller: Password = TextEditingController(),
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
             TextField(
              controller: confirmPassword = TextEditingController(),
              obscureText: true,
              decoration: const InputDecoration(hintText: 'ConfirmPassword'),
            ),
            const SizedBox(
              height: 30,
              width: 50,
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()
                      ));
                    }
                    ,
                    child: Text(
                      option,
                      style: const TextStyle(decoration: TextDecoration.underline),
                    ))),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 4, 58, 219))),
              onPressed: () {
             if(emailcontroller.text==''||Password.text==''||confirmPassword.text==''){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content:  Text('pls enter your data'),
                  backgroundColor: Color.fromARGB(219, 213, 5, 5),
                ));
                emailcontroller.text = '';
                Password.text='';
                confirmPassword.text='';
             }else if (emailcontroller.text!=''&&Password.text!=''&&confirmPassword.text== Password.text) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('comfirm ${emailcontroller.text}'),
                  backgroundColor: Colors.green,
                ));
                emailcontroller.text = '';
                Password.text='';
                confirmPassword.text='';
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()
                      ));
                }
               else if(confirmPassword.text!=Password.text){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(' confirm password isnt equal the password'),
                  backgroundColor: Color.fromARGB(219, 213, 5, 5),
                ));
                confirmPassword.text='';
                Password.text='';
                confirmPassword.text='';
             }
              },
              child: Text(
                button,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
