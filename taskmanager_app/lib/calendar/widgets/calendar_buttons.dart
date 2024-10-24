import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  final int daysInMonth = 31; // Adjust for the correct number of days in the month
  final int startingWeekday = 1; // 1 = Monday, 7 = Sunday

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Days of the Week Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Table(
            children: [
              TableRow(
                children: [
                  _buildDayLabel("Mo"),
                  _buildDayLabel("Tu"),
                  _buildDayLabel("We"),
                  _buildDayLabel("Th"),
                  _buildDayLabel("Fr"),
                  _buildDayLabel("Sa"),
                  _buildDayLabel("Su"),
                ],
              ),
            ],
          ),
        ),
        
        // Calendar Grid (Dates)
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
          itemCount: daysInMonth + (startingWeekday - 1), // Adjust for offset at the start
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7, // 7 days per row
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            // Calculate if the slot is before the 1st day of the month
            if (index < startingWeekday - 1) {
              return Container(); // Empty slots for days before the start of the month
            }

            int dayNumber = index - (startingWeekday - 2);
            bool isCurrentDay = (dayNumber == 5); // Highlight example (adjust as needed)

            return Container(
              decoration: BoxDecoration(
                color: isCurrentDay ? Color(0xFF94D762) : Color(0xFF1F265E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "$dayNumber",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // Helper method to build each day label
  Widget _buildDayLabel(String label) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}