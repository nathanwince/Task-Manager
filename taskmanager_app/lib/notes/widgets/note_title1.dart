import 'package:flutter/material.dart';

class NoteTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                    'All',
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
                    'Notes',
                    style: TextStyle(
                      color: Color(0xFFD9A056),
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
      ],
    );
  }
}
