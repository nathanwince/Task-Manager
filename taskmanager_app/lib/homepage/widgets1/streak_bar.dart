import 'package:flutter/material.dart';

class StreakBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16), // Add consistent side margins
      width: double.infinity, // Ensure it spans the screen width
      height: 34,
      decoration: BoxDecoration(
        color: const Color(0xFFFFC800), // Background color (yellow)
        borderRadius: BorderRadius.circular(23), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: const Color(0x998C7213), // Shadow color
            blurRadius: 2, // Shadow blur radius
            offset: const Offset(2, 3), // Horizontal and vertical offset
            spreadRadius: 0, // No spread
          ),
          BoxShadow(
            color: const Color(0x998C7213), // Shadow color
            blurRadius: 4, // Shadow blur radius
            offset: const Offset(0, 4), // Increased vertical offset
            spreadRadius: 0, // No spread
          ),
        ],
      ),
      child: Row(
        children: [
          // Fire icon
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/firetask_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Task count and text
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '5 tasks remaining',
              style: TextStyle(
                color: Color(0xFF8C4814), // Text color (dark red)
                fontSize: 14,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Progress bar
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 8),
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xFFB97215), // Progress bar color
                borderRadius: BorderRadius.circular(5),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: 0.4, // Example: 40% progress
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF8700), // Progress color
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}