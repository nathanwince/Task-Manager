import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 267,
            height: 26,
            child: Text(
              'Monday 3rd, 2024',
              style: TextStyle(
                color: Color(0xFF65D07E),
                fontSize: 30,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
                height: 0.03,
                letterSpacing: 0.30,
              ),
            ),
          ),
          SizedBox(height: 40), // Add vertical space below the date text
        ],
      ),
    );
  }
}