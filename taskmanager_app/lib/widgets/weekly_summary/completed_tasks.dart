import 'package:flutter/material.dart';

class CompletedTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0), // Padding from the top
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the texts vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center the texts horizontally
        children: [
          // Text for "Completed"
          Text(
            'Completed',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.30,
            ),
          ),
          // Text for "Tasks"
          Text(
            'Tasks',
            style: TextStyle(
              color: Color(0xFFD76163),
              fontSize: 70,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
              letterSpacing: 0.30,
            ),
          ),
          const SizedBox(height: 6), // Space below the entire Column
        ],
      ),
    );
  }
}