import 'package:flutter/material.dart';

class MotivationTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 394,
          height: 79,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 33,
                child: Container(
                  width: 394,
                  height: 46,
                  decoration: ShapeDecoration(
                    color: Color(0xFF1CB0F6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF10609E)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x661CB0F6),
                        blurRadius: 0,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      ),BoxShadow(
                        color: Color(0x991CB0F6),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 49,
                child: SizedBox(
                  width: 308,
                  height: 14,
                  child: Text(
                    'Dedication makes dreams come true.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w900,
                      height: 0.10,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 133,
                top: 0,
                child: SizedBox(
                  width: 128,
                  height: 12,
                  child: Text(
                    'Tip of the day',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                      height: 0.10,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}