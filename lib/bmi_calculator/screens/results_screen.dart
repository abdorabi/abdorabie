import 'package:phone_application/bmi_calculator/constants/app_colors.dart';
import 'package:phone_application/bmi_calculator/constants/app_text_styles.dart';
import 'package:phone_application/bmi_calculator/screens/bmi_screen.dart';
import 'package:phone_application/bmi_calculator/widgets/app_buttonn.dart';
import 'package:phone_application/bmi_calculator/widgets/custom_container.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultsScreen extends StatelessWidget {
  double bmiva2 = bmiva;

  String stat = '';
  String messge = '';

  ResultsScreen({super.key, bmiva});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Your Result',
                style: AppTextStyles.numberTextStyle,
              )
            ],
          ),
          Expanded(
            child: CustomContainer(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    (() {
                      if (bmiva2 <= 18.4) {
                        return stat = 'Underweight';
                      } else if (bmiva2 >= 18.5 && bmiva2 < 25) {
                        return stat = 'Normal';
                      } else {
                        stat = 'Overwieght';
                      }

                      return stat;
                    })(),
                    style: AppTextStyles.labelTextStyle,
                  ),
                  Text(
                    bmiva2.toStringAsFixed(1),
                    style: AppTextStyles.numberTextStyle,softWrap: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (() {
                          if (bmiva2 <= 18.4) {
                            return messge =
                                'You have a Underweight body , u should eating more';
                          } else if (bmiva2 >= 18.5 && bmiva2 < 25) {
                            return messge =
                                'You have a Normal body weight ,Good job';
                          } else {
                            messge =
                                'You have a Overwieght body, Go to Gym Now!';
                          }

                          return messge;
                        })(),
                        style: AppTextStyles.labelTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          AppButtonn(
            buttonTitle: 'RE-CALCULATE',
            buttonFunction: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: ((context) => const BmiScreen())));
            },
            buttonHeight: 60,
          ),
        ],
      ),
    );
  }
}
