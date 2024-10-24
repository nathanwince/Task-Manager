import 'package:flutter/material.dart';

class MotivationTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 86,  // Set the left position to 86
      top: 44,   // Set the top position to 44
      child: Container(
        width: 258,
        height: 116,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SizedBox(
                width: 89,
                height: 48,
                child: Text(
                  'Take a',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                    height: 0.05,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 31,
              top: 34,
              child: SizedBox(
                width: 227,
                height: 82,
                child: Text(
                  'Break',
                  style: TextStyle(
                    color: Color(0xFFCE82FF),
                    fontSize: 70,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                    height: 0.01,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
