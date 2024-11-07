import 'package:flutter/material.dart';

class UpcomingTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // "Upcoming Tasks" title
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Upcoming Tasks",
              style: TextStyle(
                color: Color.fromARGB(255, 230, 69, 205), // Pink/purple color
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          // Horizontal scrollable task cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTaskCard(
                  title: 'Video\nRecording',
                  time: '09:30 AM',
                  priority: 'High',
                  priorityColor: Color(0xFFF67375),
                  activityColor: Color(0xFFCE4E50),
                  cardColor: Color(0xFFCE4E50),
                  textColor: Colors.white,
                ),
                _buildTaskCard(
                  title: 'Video\nRecording',
                  time: '09:30 AM',
                  priority: 'Medium',
                  priorityColor: Color(0xFFFDAA31),
                  activityColor: Color(0xFFB97215),
                  cardColor: Color(0xFFB97215),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each task card
  Widget _buildTaskCard({
    required String title,
    required String time,
    required String priority,
    required Color priorityColor,
    required Color activityColor,
    required Color cardColor,
    required Color textColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust for consistent spacing
      child: Container(
        width: 235.0, // Set width directly
        height: 140.0, // Set height directly
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: cardColor.withOpacity(0.4),
              blurRadius: 0,
              offset: Offset(4, 4),
            ),
            BoxShadow(
              color: cardColor.withOpacity(0.6),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              // Title Text and Priority Label
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  title,
                  style: TextStyle(color: textColor, fontSize: 16, fontWeight: FontWeight.w900),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: _buildLabel(priority, priorityColor),
              ),
              
              // Bottom Row for Activity Label and Time
              Positioned(
                left: 0,
                bottom: 0,
                child: _buildActivityLabel(),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.black.withOpacity(0.6)),
                    SizedBox(width: 4.0),
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method for Activity label with shadow
  Widget _buildActivityLabel() {
    return Container(
      width: 79,
      height: 26,
      decoration: BoxDecoration(
        color: Color(0xFFE6DADA),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color(0x66F57375),
            blurRadius: 0,
            offset: Offset(2, 2),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x99F67375),
            blurRadius: 2,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Activity',
          style: TextStyle(
            color: Color(0xFFCE4E50),
            fontSize: 16,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }

  // Helper method to build priority label with the same style as the time text
  Widget _buildLabel(String text, Color bgColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black.withOpacity(0.6),
          fontSize: 16,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}