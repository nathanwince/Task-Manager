import 'package:flutter/material.dart';

class TodaysTaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Today’s Tasks',
        style: TextStyle(
          color: Color(0xFFFFB100),
          fontSize: 40,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w900,
          letterSpacing: 0.3,
        ),
      ),
    );
  }
}