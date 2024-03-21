import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';
import 'package:quiz_app/core/image_constants/image_constants.dart';
import 'package:quiz_app/view/category_screen/category_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const CategoryScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.normalWhite,
      body: Center(
        child: Image.asset(
          ImageConstants.quizLogo,
          scale: 1.5,
        ),
      ),
    );
  }
}
