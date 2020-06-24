import 'package:flutter/material.dart';
import 'package:workout_junkie/constants.dart';

class NextPageButton extends StatelessWidget {
  NextPageButton({this.onTap, this.buttonText, this.margin, this.width});
  final Function onTap;
  final String buttonText;
  final int margin;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: RawMaterialButton(
        onPressed: onTap,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        fillColor: kBlueAccentColor,
        child: Text(
          buttonText,
          style: kNextPageButtonTextStyle,
        ),
      ),
    ),
    );
  }
}

