import 'package:flutter/material.dart';

class OnboardingText02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Achieve Your Goals,\nOne Step at a Time',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
            height: 0,
          ),
        ),
      ],
    );
  }
}