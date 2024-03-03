import 'package:phone_application/bmi_calculator/constants/app_colors.dart';
import 'package:flutter/material.dart';

class RoundBotton extends StatelessWidget {
  final Icon buttonIcon;
  final void Function()? buttonFunction;
  final double? buttonRadius;
  const RoundBotton(
      {required this.buttonIcon, required this.buttonFunction,this.buttonRadius,super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonFunction,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.roundButtonColor,
        ),
        width: buttonRadius,
        height: buttonRadius,
        child: Center(child: buttonIcon),
      ),
    );
  }
}
