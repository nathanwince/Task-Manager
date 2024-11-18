import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart'; // Import the back arrow widget
import '../shared/navbar.dart'; // Import the navbar
import '../widgets/todays_task/todaystask_title.dart'; // Import the today's task title widget
import '../widgets/todays_task/date_section.dart'; // Import the date section widget
import '../widgets/todays_task/current_tasks.dart'; // Import the current tasks widget

class TodaysTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Match background color with theme
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: [
            // Back Arrow Button
              BackArrowWidget(),

            // Today's Task Title
            Center(
              child: TodaysTaskTitle(), // Title widget for today's tasks
            ),

            // Date Section
            const SizedBox(height: 20), // Space between title and date section
            Center(child: DateSection()),

            // Current Tasks Section
            const SizedBox(height: 40), // Space between date and current tasks
            Center(child: CurrentTasks()),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(), // Navbar at the bottom
    );
  }
}