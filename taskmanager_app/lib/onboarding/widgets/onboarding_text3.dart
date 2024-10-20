import 'package:flutter/material.dart';

class OnboardingText03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Plan Your Day,\nAccomplish More',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 32,
            fontFamily: 'Sen',
            fontWeight: FontWeight.w800,
            height: 0,
          ),
        ),
      ],
    );
  }
}