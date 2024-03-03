import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_application/auth/view/sign_In.dart';
import 'package:phone_application/firebase_options.dart';
import 'package:phone_application/todo_app/cubit/tasks_cubit.dart';
import 'package:phone_application/todo_app/cubit/tasks_states.dart';
import 'package:phone_application/core/shared_preferences_helper.dart';
import 'package:phone_application/todo_app/date/view/screens/todo_screen.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
 
  await ShareHelper.init();
  //ternary operator
 // Widget myHome =
      ShareHelper.read('email') != null ? const TodoScreen() : SignIn();
  runApp(
    BlocProvider(
        // .. Cascaded operator
        create: (context) => TasksCubit(InitialState())..initCubit(),
        child: MaterialApp(debugShowCheckedModeBanner: false, home: SignIn())),
  );
}
