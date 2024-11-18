import 'package:flutter/material.dart';

class TasksCompleted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0), // Left padding of 16 pixels
        child: Row(
          children: [
            // First Task Card
            _buildTaskCard(
              color: Color(0xFFCE4E50),
              shadowColor: Color(0x66CE4E50),
              lighterColor: Color(0xFFF67375),
              priority: 'High',
              time: '09:30 AM',
              taskTitle: 'Video\nRecording',
              labelTextColor: Color(0xFFCE4E50),
            ),
            // Second Task Card
            _buildTaskCard(
              color: Color(0xFFB97215),
              shadowColor: Color(0x66B97215),
              lighterColor: Color(0xFFFDAA31),
              priority: 'Medium',
              time: '09:30 AM',
              taskTitle: 'Video\nRecording',
              labelTextColor: Color(0xFFB97215),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskCard({
    required Color color,
    required Color shadowColor,
    required Color lighterColor,
    required String priority,
    required String time,
    required String taskTitle,
    required Color labelTextColor,
  }) {
    return Container(
      width: 235,
      height: 140,
      margin: EdgeInsets.only(right: 12), // Right margin for consistent spacing
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 4,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 16,
            child: Text(
              taskTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
                height: 1.5,
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Text(
              time,
              style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 16,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: lighterColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                priority,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Color(0xFFE6DADA),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: lighterColor.withOpacity(0.4),
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Text(
                'Activity',
                style: TextStyle(
                  color: labelTextColor,
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}