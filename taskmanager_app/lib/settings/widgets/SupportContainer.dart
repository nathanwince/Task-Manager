import 'package:flutter/material.dart';

class SupportContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 395,
      height: 160,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 30,
            child: Container(
              width: 395,
              height: 130,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFFE2F2FF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF6C7EA0)),
                  borderRadius: BorderRadius.circular(25),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x66E2F2FF),
                    blurRadius: 0,
                    offset: Offset(4, 4),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x99E2F2FF),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Text(
              'Support',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.30,
              ),
            ),
          ),
          // Add more support section widgets as needed
        ],
      ),
    );
  }
}