import 'package:flutter/material.dart';

import 'widgets/greencorner.dart';
import 'widgets/notes.dart';
import 'widgets/savec_button.dart';
import 'widgets/selectpriority.dart';
import 'widgets/weekcal.dart';
import 'widgets/selecttime.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Manager'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EditTask(),
            Line(),
            TaskSelectDate(),
            // Uncomment the widgets you want to add
            // Group6(),
            // GetStartedButton(),
            // TaskSelectPriority(),
            // TaskNote(),
            // TaskSelectTime(),
            // Group323(),
          ],
        ),
      ),
    );
  }
}

// EditTask widget
class EditTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Edit Task',
      style: TextStyle(
        color: Color(0xFF94D863),
        fontSize: 40,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w900,
        height: 0.02,
        letterSpacing: 0.30,
      ),
    );
  }
}

// Line widget
class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      color: Color(0xFF444B86),
    );
  }
}

// TaskSelectDate widget
class TaskSelectDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 272,
      decoration: BoxDecoration(color: Color(0xFF2F3777)),
      child: Center(
        child: Text(
          'Select the date',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }
}