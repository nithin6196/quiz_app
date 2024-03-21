// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/category_screen/category_screen.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.rightAnswerCount,
      required this.wrongAnswerCount,
      required this.totalQuestionCount,
      required this.item});
  final int rightAnswerCount;
  final int wrongAnswerCount;
  final int totalQuestionCount;
  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    final int skippedQuestionCount =
        totalQuestionCount - (rightAnswerCount + wrongAnswerCount);

    final percentage = (rightAnswerCount / totalQuestionCount) * 100;
    return Scaffold(
      backgroundColor: ColorConstants.primaryBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              percentage.round() >= 70 ? "congrats!" : "sorry, try again",
              style: TextStyle(
                  color: ColorConstants.normalWhite,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "${percentage.round()} score %",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.lightGreen),
            ),
            Text(
              "Correct Answers : $rightAnswerCount",
              style: TextStyle(
                  color: ColorConstants.normalWhite,
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "Wrong answers : $wrongAnswerCount",
              style: TextStyle(
                  color: ColorConstants.normalWhite,
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              "Skipped answers : $skippedQuestionCount",
              style: TextStyle(
                  color: ColorConstants.normalWhite,
                  fontSize: 17,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizScreen(categoryModel: item),
                      )),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    height: 60,
                    decoration: BoxDecoration(
                        color: ColorConstants.lightOrange,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorConstants.normalWhite, width: 3)),
                    child: Center(
                      child: Text(
                        "Restart",
                        style: TextStyle(
                            color: ColorConstants.normalWhite,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoryScreen())),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    height: 60,
                    decoration: BoxDecoration(
                        color: ColorConstants.lightOrange,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: ColorConstants.normalWhite, width: 3)),
                    child: Center(
                      child: Text(
                        "Go to Home",
                        style: TextStyle(
                            color: ColorConstants.normalWhite,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
