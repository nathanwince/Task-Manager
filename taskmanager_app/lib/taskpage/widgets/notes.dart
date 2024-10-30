import 'package:flutter/material.dart';

class TaskNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Note" label
        Text(
          'Note',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.30,
          ),
        ),
        SizedBox(height: 10), // Space between text and note box

        // Note Box
        Container(
          width: 370,
          height: 126,
          decoration: ShapeDecoration(
            color: Color(0xFFF1F5F9),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF6C7EA0)),
              borderRadius: BorderRadius.circular(30),
            ),
            shadows: [
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
        ),
      ],
    );
  }
}