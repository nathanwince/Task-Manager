import 'package:flutter/material.dart';

import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import 'widgets/hp_task.dart';
import 'widgets/lp_task.dart';
import 'widgets/mp_task.dart';
import 'widgets/schedule.dart';
import 'widgets/yellowcorner.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D2550),
        iconTheme: IconThemeData(color: Colors.white), // Ensure icons in the AppBar are white
      ),
      body: Stack(
        children: [
          // Background and main layout
          Column(
            children: [
              // Background Misc (if applicable)
              Transform(
                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.50),
                child: Container(
                  width: 497.96,
                  height: 292.82,
                  child: Stack(),
                ),
              ),
            ],
          ),

          // Scrollable content
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back Arrow Button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: BackArrowWidget(), // Custom widget for back navigation
                  ),

                  // Today's Schedule
                  DailySchedule(),

                  // Section Title for Today’s Tasks
                  SizedBox(
                    width: 275,
                    height: 48,
                    child: Text(
                      'Today’s Tasks',
                      style: TextStyle(
                        color: Color(0xFFFFB100),
                        fontSize: 40,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                        height: 0.02,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // High Priority Task
                  HighPriority(
                    title: 'High Priority Task',
                    description: 'This is a description of a high priority task.',
                    date: '2024-10-23',
                    time: '10:00 AM',
                    priority: 'High',
                  ),
                  SizedBox(height: 16),

                  // Medium Priority Task
                  MediumPriority(
                    title: 'Medium Priority Task',
                    description: 'This is a description of a medium priority task.',
                    date: '2024-10-23',
                    time: '11:00 AM',
                    priority: 'Medium',
                  ),
                  SizedBox(height: 16),

                  // Low Priority Task
                  LowPriority(
                    title: 'Low Priority Task',
                    description: 'This is a description of a low priority task.',
                    date: '2024-10-23',
                    time: '12:00 PM',
                    priority: 'Low',
                  ),
                  SizedBox(height: 50), // Space for the navbar
                ],
              ),
            ),
          ),

          // Navigation Bar at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Navbar(), // Navigation Bar
          ),
        ],
      ),
    );
  }
}
