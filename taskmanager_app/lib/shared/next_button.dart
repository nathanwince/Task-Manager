import 'package:flutter/material.dart';

class NextButton01 extends StatelessWidget {
  final VoidCallback onPressed; // The callback for button press

  NextButton01({required this.onPressed}); // Constructor to accept the callback

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 26.0), // 16px horizontal and bottom padding
      child: GestureDetector( // Use GestureDetector to detect taps
        onTap: onPressed, // Call the provided function when tapped
        child: Container(
          height: 77,
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the button
            borderRadius: BorderRadius.circular(24), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Color(0x66FFFFFF),
                blurRadius: 0,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x99FFFFFF),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center( // Center the text inside the button
            child: Text(
              'Next',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}