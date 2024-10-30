import 'package:flutter/material.dart';

class TaskselectPriority extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category title
        Text(
          'Category',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.30,
          ),
        ),
        SizedBox(height: 12),

        // Priority categories in two rows
        Wrap(
          spacing: 20, // Space between categories horizontally
          runSpacing: 10, // Space between categories vertically
          children: [
            buildPriorityCategory('Meeting', Color(0xFFCA903A), Color(0xFFA26C1C)),
            buildPriorityCategory('Hangout', Color(0xFFBC3DC3), Color(0xFF943099)),
            buildPriorityCategory('Other', Color(0xFF786E6E), Color(0xFF625959)),
            buildPriorityCategory('Weekend', Color(0xFF41C76F), Color(0xFF3D955B)),
            buildPriorityCategory('Cooking', Color(0xFFB92424), Color(0xFF992020)),
          ],
        ),
      ],
    );
  }

  // Helper method to build individual category widgets
  Widget buildPriorityCategory(String label, Color bgColor, Color ovalColor) {
    return Container(
      width: 80,
      height: 24,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Oval icon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: ovalColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Category text
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.30,
            ),
          ),
        ],
      ),
    );
  }
}