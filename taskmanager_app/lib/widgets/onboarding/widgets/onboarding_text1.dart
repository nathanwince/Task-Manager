import 'package:flutter/material.dart';

class OnboardingText01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Title Text
        Text(
          'Stay Organized, Stress-Free',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF9F9F9),
            fontSize: 26,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
            height: 1.2, // Adjust line height for better spacing
          ),
        ),
        SizedBox(height: 8), // Space between title and body text
        // Body Text
        Text(
          'Effortlessly manage all your tasks\nin one place, so you can focus on\nwhat truly matters.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xCCFFFEFE),
            fontSize: 22,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust line height for better spacing
          ),
        ),
      ],
    );
  }
}
