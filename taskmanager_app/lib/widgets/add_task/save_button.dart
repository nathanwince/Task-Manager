import 'package:flutter/material.dart';

const double kButtonHeight = 77.0;
const double kHorizontalPadding = 16.0;
const Color kButtonBackgroundColor = Color(0xFF58CC02);
const Color kButtonBorderColor = Color(0xFF2B6C2B);
const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 32,
  fontFamily: 'Baloo',
  fontWeight: FontWeight.w400,
);

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Container(
        width: double.infinity,
        height: kButtonHeight,
        decoration: ShapeDecoration(
          color: kButtonBackgroundColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: kButtonBorderColor),
            borderRadius: BorderRadius.circular(30),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x6658CC02),
              blurRadius: 0,
              offset: Offset(4, 4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x9958CC02),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Save',
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}