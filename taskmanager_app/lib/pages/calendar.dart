import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/calendar/calendar_buttons.dart';
import '../widgets/calendar/currentday_task.dart';

class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Background color to match your theme
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          // Back Arrow Button without padding
          BackArrowWidget(), // Custom widget for back navigation

          // Centered Calendar Text
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0), // Add space between the arrow and text
              child: Text(
                "Calendar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36, // Increase font size
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),

          // Calendar Widget aligned left
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CalendarWidget(), // Use your actual calendar widget here
          ),

          // Padding above the tasks section
          Padding(
            padding: EdgeInsets.only(top: 40.0), // Adjust to match desired space
          ),

          // Task List Section with title aligned left
          Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0), // Consistent padding
            child: Align(
              alignment: Alignment.centerLeft, // Ensure left alignment
              child: Text(
                "Tasks for Friday 5th, 2024",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Adjusted Space Between the Text and Task Buttons
          SizedBox(height: 4.0),

          // Task Buttons aligned left
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0), // Align left
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UpcomingTasks(), // Reusing your task widget for horizontal scrolling
                    SizedBox(width: 8.0), // Padding between tasks if needed
                  ],
                ),
              ),
            ),
          ),

          // Navbar at the bottom
          Navbar(),
        ],
      ),
    );
  }
}