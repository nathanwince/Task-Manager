import 'package:flutter/material.dart';

class RollCallHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 16.0, right: 16.0), // Add top padding and horizontal padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
        children: [
          // Text for "Roll Call"
          Text(
            'Roll Call',
            style: TextStyle(
              color: Colors.white,
              fontSize: 54,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center, // Center the text
          ),
          const SizedBox(height: 10), // Space between text and logo
          // Logo Container
          Container(
            width: 364,
            height: 364,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/rollcall_logo.png"),
                fit: BoxFit.contain, // Maintain aspect ratio
              ),
            ),
          ),
        ],
      ),
    );
  }
}