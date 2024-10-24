import 'package:flutter/material.dart';

import 'widgets/backarrow_button.dart';
import 'widgets/hp_task.dart';
import 'widgets/lp_task.dart';
import 'widgets/mp_task.dart';
import 'widgets/navbar.dart';
import 'widgets/schedule.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        backgroundColor: Color(0xFF1D2550),
      ),
      body: Stack(
        children: [
          // BackgroundMisc widget implemented directly here
          Column(
            children: [
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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DailySchedule(), // Today's Schedule
                  // TodayTasks widget implemented directly here
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
                  HighPriority(
                    title: 'High Priority Task',
                    description: 'This is a description of a high priority task.',
                    date: '2024-10-23',
                    time: '10:00 AM',
                    priority: 'High',
                  ),
                  SizedBox(height: 16),
                  MediumPriority(
                    title: 'Medium Priority Task',
                    description: 'This is a description of a medium priority task.',
                    date: '2024-10-23',
                    time: '11:00 AM',
                    priority: 'Medium',
                  ),
                  SizedBox(height: 16),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Navbar(), // Navigation Bar
          ),
        ],
      ),
    );
  }
}