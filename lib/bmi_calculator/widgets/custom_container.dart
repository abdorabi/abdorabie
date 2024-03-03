import 'package:phone_application/bmi_calculator/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget? content;
  const CustomContainer({super.key, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: AppColors.activeContainerColor,
          borderRadius: BorderRadius.circular(5)),
      child: content,
    );
  }
}
