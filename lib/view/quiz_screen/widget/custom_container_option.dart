// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app/core/color_constants/color_constants.dart';

class CustomContainerOption extends StatelessWidget {
  const CustomContainerOption(
      {super.key,
      required this.optionLabel,
      required this.borderColor,
      this.onTap,
      this.icon});
  final String optionLabel;
  final Color borderColor;
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                optionLabel,
                style: TextStyle(color: ColorConstants.normalWhite),
              ),
            ),
            Icon(
              icon,
              color: ColorConstants.normalWhite,
            )
          ],
        ),
      ),
    );
  }
}
