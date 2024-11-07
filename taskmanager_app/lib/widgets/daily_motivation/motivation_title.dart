import 'package:flutter/material.dart';

class MotivationTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0), // Padding from the top
      child: Column(
        children: [
          // Text for "Take a"
          Text(
            'Take a',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
              height: 0.05,
              letterSpacing: 0.30,
            ),
          ),
          const SizedBox(height: 50), // Space between the two texts
          // Text for "Break"
          Text(
            'Break',
            style: TextStyle(
              color: Color(0xFFCE82FF),
              fontSize: 70,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
              height: 0.01,
              letterSpacing: 0.30,
            ),
          ),
        ],
      ),
    );
  }
}