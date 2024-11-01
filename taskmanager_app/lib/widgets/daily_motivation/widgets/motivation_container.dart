import 'package:flutter/material.dart';

class MotivationHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 394,
          height: 454,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xFFE2F2FF),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF6C7EA0)),
              borderRadius: BorderRadius.circular(30),
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
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 308.79,
                child: Container(
                  width: 394,
                  height: 1.71,
                  decoration: BoxDecoration(color: Color(0xFF94BDD9)),
                ),
              ),
              Positioned(
                left: 0,
                top: 149.13,
                child: Container(
                  width: 394,
                  height: 1.71,
                  decoration: BoxDecoration(color: Color(0xFF94BDD9)),
                ),
              ),
              // Bookmarks section
              Positioned(
                left: 21,
                top: 327,
                child: Container(
                  width: 354,
                  height: 107,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 107,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/107x107"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 147,
                        top: 4,
                        child: SizedBox(
                          width: 207,
                          height: 36,
                          child: Text(
                            'Bookmarks',
                            style: TextStyle(
                              color: Color(0xFF1CB0F6),
                              fontSize: 24,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w900,
                              height: 0.05,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 147,
                        top: 52,
                        child: Text(
                          'Save your favorite tips\nand important tasks',
                          style: TextStyle(
                            color: Color(0xFF9D9D9D),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Notes section
              Positioned(
                left: 35,
                top: 181,
                child: Container(
                  width: 298,
                  height: 107,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 107,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/107x107"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 133,
                        top: 5,
                        child: SizedBox(
                          width: 71,
                          height: 36,
                          child: Text(
                            'Notes',
                            style: TextStyle(
                              color: Color(0xFF1CB0F6),
                              fontSize: 24,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w900,
                              height: 0.05,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 133,
                        top: 53,
                        child: Text(
                          'Create or view notes',
                          style: TextStyle(
                            color: Color(0xFF9D9D9D),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Weekly Summary section
              Positioned(
                left: 29,
                top: 22,
                child: Container(
                  width: 351,
                  height: 107,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 107,
                          height: 107,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/107x107"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 139,
                        top: 4,
                        child: SizedBox(
                          width: 212,
                          height: 36,
                          child: Text(
                            'Weekly Summary',
                            style: TextStyle(
                              color: Color(0xFF1CB0F6),
                              fontSize: 24,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w900,
                              height: 0.05,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 139,
                        top: 52,
                        child: Text(
                          'View how you did for\n the week',
                          style: TextStyle(
                            color: Color(0xFF9D9D9D),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                            letterSpacing: 0.30,
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
