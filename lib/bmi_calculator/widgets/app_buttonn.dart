import 'package:phone_application/bmi_calculator/constants/app_colors.dart';
import 'package:phone_application/bmi_calculator/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppButtonn extends StatelessWidget {
  final String buttonTitle;
  final void Function()? buttonFunction;
  final double? buttonHeight;
  const AppButtonn(
      {required this.buttonTitle, required this.buttonFunction,this.buttonHeight, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonFunction,
      child: Container(
        margin: EdgeInsets.all(10),
        height: buttonHeight,
        decoration: BoxDecoration(
          color: AppColors.appButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: AppTextStyles.appButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
