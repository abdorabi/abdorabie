import 'package:phone_application/bmi_calculator/constants/app_colors.dart';
import 'package:phone_application/bmi_calculator/constants/app_text_styles.dart';
import 'package:phone_application/bmi_calculator/screens/results_screen.dart';
import 'package:phone_application/bmi_calculator/widgets/app_buttonn.dart';
import 'package:phone_application/bmi_calculator/widgets/custom_container.dart';
import 'package:phone_application/bmi_calculator/widgets/round_button.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

int ageCounter = 20;
int weightCounter = 60;
int heightCounter = 150;
double bmiva = weightCounter / (heightCounter * 0.01);

Icon xy = Icon(
  Icons.male,
  size: 100,
  color: AppColors.whiteColor,
);

Icon xx = Icon(
  Icons.female,
  size: 100,
  color: AppColors.whiteColor,
);

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColors.whiteColor),
        ),
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                    child: CustomContainer(
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              xy = Icon(
                                Icons.male,
                                color: AppColors.appButtonColor,
                                size: 100,
                              );
                              xx = Icon(
                                Icons.female,
                                size: 100,
                                color: AppColors.whiteColor,
                              );
                            });
                          },
                        ),
                        Text(
                          'MALE',
                          style: AppTextStyles.labelTextStyle,
                        )
                      ]),
                )),
                Expanded(
                    child: CustomContainer(
                  content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              xx = Icon(
                                Icons.female,
                                color: AppColors.appButtonColor,
                                size: 100,
                              );
                              xy = Icon(
                                Icons.male,
                                size: 100,
                                color: AppColors.whiteColor,
                              );
                            });
                          },
                          child: xx,
                        ),
                        Text('FEMALE', style: AppTextStyles.labelTextStyle)
                      ]),
                ),
                )
              ],
            ),
          ),
          Expanded(
              child: CustomContainer(
            content:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Hwight',
                style: AppTextStyles.labelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$heightCounter',
                    style: AppTextStyles.numberTextStyle,
                  ),
                  Text(
                    'cm',
                    style: AppTextStyles.labelTextStyle,
                  )
                ],
              ),
              Slider(
                value: heightCounter.toDouble(),
                onChanged: (newvalue) {
                  setState(() {
                    heightCounter = newvalue.toInt();
                  });
                },
                min: 120,
                max: 220,
                thumbColor: AppColors.appButtonColor,
                activeColor: AppColors.appButtonColor,
              )
            ]),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CustomContainer(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: AppTextStyles.labelTextStyle,
                      ),
                      Text(
                        '$weightCounter',
                        style: AppTextStyles.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundBotton(
                              buttonRadius: 40,
                              buttonIcon: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                                size: 30,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (weightCounter > 0) {
                                    weightCounter--;
                                  }
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundBotton(
                              buttonRadius: 40,
                              buttonIcon: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                                size: 40,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (weightCounter < 200) {
                                    weightCounter++;
                                  }
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CustomContainer(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: AppTextStyles.labelTextStyle,
                      ),
                      Text(
                        '$ageCounter',
                        style: AppTextStyles.numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundBotton(
                              buttonRadius: 40,
                              buttonIcon: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                                size: 30,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (ageCounter > 0) {
                                    ageCounter--;
                                  }
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundBotton(
                              buttonRadius: 40,
                              buttonIcon: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                                size: 40,
                              ),
                              buttonFunction: () {
                                setState(() {
                                  if (ageCounter < 130) {
                                    ageCounter++;
                                  }
                                });
                              })
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          AppButtonn(
            buttonTitle: 'Calculate',
            buttonFunction: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ResultsScreen(
                            bmiva: bmiva = weightCounter /
                                ((heightCounter * 0.01) *
                                    (heightCounter * 0.01)),
                          ))));
            },
            buttonHeight: 50,
          )
        ],
      ),
    );
  }
}
