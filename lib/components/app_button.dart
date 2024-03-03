import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.title, super.key, required this.buttonFunction});
  final String title;
  final void Function()? buttonFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonFunction,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Color.fromARGB(255, 0, 69, 206),
        ),
        height: 40,
        width: 400,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
