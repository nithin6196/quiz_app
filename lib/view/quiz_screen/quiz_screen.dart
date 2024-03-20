// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/view/quiz_screen/widget/custom_container_option.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  int rightAnswerCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.primaryBlack,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstants.lightBlack,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  HomeScreenController
                      .questionsList[currentQuestionIndex].question,
                  style: TextStyle(
                      color: ColorConstants.normalWhite, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: List.generate(
                    HomeScreenController
                        .questionsList[currentQuestionIndex].optionsList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: CustomContainerOption(
                            borderColor: buildColor(index),
                            onTap: () {
                              if (selectedAnswerIndex == null) {
                                setState(() {
                                  selectedAnswerIndex = index;
                                });
                                if (selectedAnswerIndex ==
                                    HomeScreenController
                                        .questionsList[currentQuestionIndex]
                                        .correctAnswerIndex) {
                                  rightAnswerCount++;
                                  print(rightAnswerCount);
                                }
                              }
                            },
                            optionLabel: HomeScreenController
                                .questionsList[currentQuestionIndex]
                                .optionsList[index],
                            icon: buildIcon(index),
                          ),
                        )),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  {
                    if (currentQuestionIndex <
                        HomeScreenController.questionsList.length - 1) {
                      currentQuestionIndex++;
                      selectedAnswerIndex = null;
                      setState(() {});
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                rightAnswerCount: rightAnswerCount),
                          ));
                    }
                  }
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstants.buttonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: ColorConstants.normalWhite),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // build color
  Color buildColor(int index) {
    if (index ==
            HomeScreenController
                .questionsList[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      // to show right answer if selected answer is not null
      return Colors.green;
    } else if (index == selectedAnswerIndex) {
      // to show the wrong answer
      return Colors.red;
    } else {
      // to show the default color as grey
      return ColorConstants.lightBlack;
    }
  }

  IconData? buildIcon(int index) {
    if (index ==
            HomeScreenController
                .questionsList[currentQuestionIndex].correctAnswerIndex &&
        selectedAnswerIndex != null) {
      return Icons.done;
    } else if (index == selectedAnswerIndex) {
      return Icons.close_rounded;
    } else {
      return null;
    }
  }

  // icon
}
