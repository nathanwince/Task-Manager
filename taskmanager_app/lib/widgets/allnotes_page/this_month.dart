import 'package:flutter/material.dart';

class MonthNoteBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // Padding around the entire widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
        children: [
          // "January" Text positioned above the container
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Space between "January" text and the container
            child: Text(
              'January',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.30,
              ),
            ),
          ),
          // Main Container
          Container(
            width: double.infinity, // Use full width for responsiveness
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Internal padding for content
            decoration: BoxDecoration(
              color: Color(0xFFE2F2FF),
              borderRadius: BorderRadius.circular(23),
              border: Border.all(width: 1, color: Color(0xFF6C7EA0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x66E2F2FF),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x99E2F2FF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
              children: [
                // Note Title
                Text(
                  'Dreams',
                  style: TextStyle(
                    color: Color(0xFFD9A157), // Updated color for title
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
                SizedBox(height: 4), // Space between title and description
                // Note Description
                Text(
                  'Today I dreamt about how...',
                  style: TextStyle(
                    color: Color(0xFF5E5B5B),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}