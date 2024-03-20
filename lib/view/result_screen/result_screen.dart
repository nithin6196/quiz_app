// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightAnswerCount});
  final int rightAnswerCount;

  @override
  Widget build(BuildContext context) {
    final percentage =
        (rightAnswerCount / HomeScreenController.questionsList.length) * 100;
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: Center(
        child: Text(
          "Your score is ${percentage.round()} %",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: ColorConstants.normalWhite),
        ),
      ),
    );
  }
}
