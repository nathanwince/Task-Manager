import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 32, // Full width with padding
          height: 308,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32, // Full width
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
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 1,
                top: 236.13,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32, // Full width
                  height: 1.71,
                  decoration: BoxDecoration(color: Color(0xFF6C7EA0)),
                ),
              ),
              Positioned(
                left: 1,
                top: 156.13,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32, // Full width
                  height: 1.71,
                  decoration: BoxDecoration(color: Color(0xFF6C7EA0)),
                ),
              ),
              Positioned(
                left: 1,
                top: 30,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32, // Full width
                  height: 256,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 48.13,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 32, // Full width
                          height: 1.71,
                          decoration: BoxDecoration(color: Color(0xFF6C7EA0)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        child: Center(
                          child: Text(
                            'Dedication makes dreams come true.',
                            textAlign: TextAlign.center, // Center align the text
                            style: TextStyle(
                              color: Color(0xFF5E5B5B),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 78,
                        child: Center(
                          child: Text(
                            'Make working toward your goal a habit.',
                            textAlign: TextAlign.center, // Center align the text
                            style: TextStyle(
                              color: Color(0xFF5E5B5B),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 158,
                        child: Center(
                          child: Text(
                            'Set small goals to build momentum.',
                            textAlign: TextAlign.center, // Center align the text
                            style: TextStyle(
                              color: Color(0xFF5E5B5B),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 230,
                        child: Center(
                          child: Text(
                            'Reward yourself for the little wins.',
                            textAlign: TextAlign.center, // Center align the text
                            style: TextStyle(
                              color: Color(0xFF5E5B5B),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
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
        ),
      ],
    );
  }
}