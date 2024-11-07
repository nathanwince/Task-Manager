import 'package:flutter/material.dart';

class MotivationTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0), // Add padding for top and horizontal alignment
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
        children: [
          const SizedBox(height: 40), // Space above the title
          Text(
            'Tip of the day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.30,
            ),
          ),
          const SizedBox(height: 16), // Space between title and container
          Container(
            width: double.infinity, // Use full width for responsiveness
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF1CB0F6),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Color(0xFF10609E)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x661CB0F6),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x991CB0F6),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Dedication makes dreams come true.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}