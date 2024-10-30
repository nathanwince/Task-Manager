import 'package:flutter/material.dart';

class WeekCalendar extends StatelessWidget {
  final List<Map<String, String>> days = [
    {'day': 'Mo', 'date': '3'},
    {'day': 'Tu', 'date': '4'},
    {'day': 'We', 'date': '5'},
    {'day': 'Th', 'date': '6'},
    {'day': 'Fr', 'date': '7'},
    {'day': 'Sa', 'date': '8'},
    {'day': 'Su', 'date': '9'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 378,
          height: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: days.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, String> day = entry.value;

              return _buildDayBlock(day['day']!, day['date']!, index == 1); // Highlight the second day (Tuesday) with green
            }).toList(),
          ),
        ),
      ],
    );
  }

  // Helper widget to build day block
  Widget _buildDayBlock(String day, String date, bool isHighlighted) {
    return Container(
      width: 49,
      height: 72,
      decoration: BoxDecoration(
        color: isHighlighted ? Color(0xFF94D762) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          '$day\n$date',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w800,
            letterSpacing: 0.30,
          ),
        ),
      ),
    );
  }
}