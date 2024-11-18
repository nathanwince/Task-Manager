import 'package:flutter/material.dart';

class RecentNotesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0), // Padding around the entire widget
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
        children: [
          // "Last 30 Days" Text positioned above the container
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Space between "Last 30 Days" text and the container
            child: Text(
              'Last 30 Days',
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Internal padding for content
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
              children: List.generate(3, (index) {
                // Only add bottom border if it's not the last item
                bool isLastItem = index == 2;
                return _buildNoteItem('Dreams', 'Today I dreamt about how...', isLastItem);
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoteItem(String title, String description, bool isLastItem) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Padding inside each note item
      decoration: BoxDecoration(
        border: Border(
          bottom: isLastItem
              ? BorderSide.none
              : BorderSide(color: Color(0xFF6C7EA0), width: 1), // Bottom border for each note except the last one
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFD9A157), // Updated color for title text
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.30,
            ),
          ),
          SizedBox(height: 4), // Space between title and description
          Text(
            description,
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
    );
  }
}