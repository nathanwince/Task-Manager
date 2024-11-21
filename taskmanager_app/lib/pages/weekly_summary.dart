import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/weekly_summary/summary_header.dart'; // Import the new header widget
import '../widgets/weekly_summary/date.dart';
import '../widgets/weekly_summary/tasks_completed.dart';

class WeeklySummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Match background color with theme
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: [
            // Header section with CompletedTasks and WeeklySummary
            SummaryHeader(),

            // Date and tasks completed sections
            const SizedBox(height: 60), // Space between header and other content
            Center(child: DateWidget()),
            Center(child: TasksCompleted()),
          ],
        ),
      ),
    );
  }
}