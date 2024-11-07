import 'package:flutter/material.dart';

class OnboardingHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0), // Add padding to the top and left
      child: Row(
        children: [
          // Logo Container
          Container(
            width: 44,
            height: 28,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/rollcall_logo.png"),
                fit: BoxFit.contain, // Maintain aspect ratio
              ),
            ),
          ),
          const SizedBox(width: 6), // Space between logo and text
          // Text for "Roll Call"
          Text(
            'Roll Call',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}