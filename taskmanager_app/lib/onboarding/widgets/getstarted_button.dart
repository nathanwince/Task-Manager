import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358,
      height: 77,
      decoration: BoxDecoration(
        // Apply shadows to the outer container
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24), // Rounded corners
        child: Container(
          color: Colors.white, // Background color for the button
          child: Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
