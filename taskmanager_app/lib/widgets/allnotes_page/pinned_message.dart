import 'package:flutter/material.dart';

class PinnedNoteBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // Padding around the entire widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align contents to the left
        children: [
          // Pinned Text positioned above the container
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Space between "Pinned" text and the container
            child: Text(
              'Pinned',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
                letterSpacing: 0.30,
              ),
            ),
          ),
          // Main Container
          Container(
            width: double.infinity,
            height: 90,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Internal padding for contents
            decoration: BoxDecoration(
              color: Color(0xFFE2F2FF),
              borderRadius: BorderRadius.circular(25),
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
              mainAxisAlignment: MainAxisAlignment.center, // Center contents vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  'Dreams',
                  style: TextStyle(
                    color: Color(0xFFD9A157), // Updated to use the preferred orange color
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
                SizedBox(height: 4), // Space between title and description
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