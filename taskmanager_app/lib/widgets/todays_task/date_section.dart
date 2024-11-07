import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Date and Task Count
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'January 23',
                style: TextStyle(
                  color: Color(0xFFFFB100),
                  fontSize: 24,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 4), // Space between texts
              Text(
                '5 Tasks Today',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.89),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          // Calendar Icon with Background Circle
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Color(0xFF3E478D),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x663F478D),
                  blurRadius: 0,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Color(0x993F478D),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                'assets/images/calendar_icon.png', // Replace with your actual path
                width: 39,
                height: 39,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}