import 'package:flutter/material.dart';

class TaskselectTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Select time" label
        Text(
          'Select time',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.30,
          ),
        ),
        SizedBox(height: 16), // Space between label and container

        // Time selection container
        Container(
          width: 370,
          height: 88,
          decoration: BoxDecoration(
            color: Color(0xFFF1F5F9),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Color(0xFF6C7EA0), width: 1),
            boxShadow: [
              BoxShadow(
                color: Color(0x66F1F5F9),
                blurRadius: 0,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x99F1F5F9),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // From time
              _buildTimeColumn('From', '12:00', 'am'),

              // To time
              _buildTimeColumn('To', '11:59', 'pm'),
            ],
          ),
        ),
      ],
    );
  }

  // Helper widget for time display
  Widget _buildTimeColumn(String label, String time, String period) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF94A3B8),
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
            letterSpacing: 0.30,
          ),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Text(
              time,
              style: TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(width: 8),
            Text(
              period,
              style: TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}