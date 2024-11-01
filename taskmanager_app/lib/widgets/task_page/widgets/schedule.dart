import 'package:flutter/material.dart';

class DailySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 54,
      decoration: BoxDecoration(
        color: Colors.transparent, // You can set a background color if needed
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Color(0xFF3E478D),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x663F478D),
                  blurRadius: 2,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x993F478D),
                  blurRadius: 2,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: ClipOval(
              child: Image.network(
                "https://via.placeholder.com/39x39",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}