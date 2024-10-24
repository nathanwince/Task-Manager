import 'package:flutter/material.dart';

class NoteNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Positioned(
          left: 15,
          top: 315,
          child: Container(
            width: 400,
            height: 342,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 34,
                  child: Container(
                    width: 400,
                    height: 308,
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
                  child: SizedBox(
                    width: 154,
                    height: 26,
                    child: Text(
                      'Last 30 Days',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0.05,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1,
                  top: 215,
                  child: _buildEntry(),
                ),
                Positioned(
                  left: 1,
                  top: 135.50,
                  child: _buildEntry(),
                ),
                Positioned(
                  left: 1,
                  top: 56,
                  child: _buildEntry(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEntry() {
    return Container(
      width: 398,
      height: 108.50,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 55,
            child: Container(
              width: 398,
              height: 2,
              decoration: BoxDecoration(color: Color(0xFF6C7EA0)),
            ),
          ),
          Positioned(
            left: 15,
            top: 0,
            child: Container(
              width: 183,
              height: 32,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 23,
                    child: SizedBox(
                      width: 183,
                      height: 9,
                      child: Text(
                        'Today I dreamt about how...',
                        style: TextStyle(
                          color: Color(0xFF5E5B5B),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.15,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 61,
                      height: 11,
                      child: Text(
                        'Dreams',
                        style: TextStyle(
                          color: Color(0xFFCE82FF),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          height: 0.10,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
