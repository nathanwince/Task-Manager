import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 430,
          height: 932,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF03174C)),
          child: Stack(
            children: [
              Positioned(
                left: 150,
                top: 141,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/130x130"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 518.64,
                top: 234.80,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.50),
                  child: Container(
                    width: 497.96,
                    height: 292.82,
                    child: Stack(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 861,
                child: Container(
                  width: 431,
                  height: 71,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 431,
                          height: 71,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(width: 431, height: 2),
                              ),
                              Positioned(
                                left: 0,
                                top: 2,
                                child: Container(
                                  width: 430,
                                  height: 69,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 430,
                                          height: 69,
                                          decoration: BoxDecoration(color: Color(0xFF2B3166)),
                                        ),
                                      ),
                                      Positioned(
                                        left: 30.93,
                                        top: 12,
                                        child: Container(
                                          width: 363.16,
                                          height: 45,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 3,
                                                child: Container(
                                                  width: 363.16,
                                                  height: 40.50,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        left: 75.82,
                                                        top: 0.50,
                                                        child: Container(
                                                          width: 39.91,
                                                          height: 40,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Container(
                                                                  width: 39.91,
                                                                  height: 40,
                                                                  decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                      image: NetworkImage("https://via.placeholder.com/40x40"),
                                                                      fit: BoxFit.fill,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: Container(
                                                          width: 39.91,
                                                          height: 40,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: NetworkImage("https://via.placeholder.com/40x40"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 328.24,
                                                        top: 2,
                                                        child: Container(
                                                          width: 34.92,
                                                          height: 35,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: NetworkImage("https://via.placeholder.com/35x35"),
                                                              fit: BoxFit.fill,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 161.62,
                                                top: -0,
                                                child: Container(
                                                  width: 44.90,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://via.placeholder.com/45x45"),
                                                      fit: BoxFit.fill,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 2,
                        child: Container(
                          width: 431,
                          height: 52,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 289,
                                top: 17,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://via.placeholder.com/35x35"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 431,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 2,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFF444A85),
                                      ),
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
              ),
              Positioned(
                left: 99,
                top: 51,
                child: SizedBox(
                  width: 232,
                  height: 82,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      color: Color(0xFF1CB0F6),
                      fontSize: 70,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 0.01,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 356,
                child: Container(
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
                      ),BoxShadow(
                        color: Color(0x99E2F2FF),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
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
                      Positioned(
                        left: 35,
                        top: 331,
                        child: Container(
                          width: 89,
                          height: 112,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/89x112"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 168,
                        top: 331,
                        child: Container(
                          width: 207,
                          height: 82,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 207,
                                  height: 36,
                                  child: Text(
                                    'Longest Streak',
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
                                left: 29,
                                top: 56,
                                child: Text(
                                  '78 Days',
                                  style: TextStyle(
                                    color: Color(0xFF9D9D9D),
                                    fontSize: 24,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w900,
                                    height: 0.05,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 181,
                        child: Container(
                          width: 329,
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
                                  width: 196,
                                  height: 36,
                                  child: Text(
                                    'Task Completed',
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
                                left: 162,
                                top: 54,
                                child: Text(
                                  '22 Tasks',
                                  style: TextStyle(
                                    color: Color(0xFF9D9D9D),
                                    fontSize: 24,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w900,
                                    height: 0.05,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 26,
                        top: 26,
                        child: Container(
                          width: 354,
                          height: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 9,
                                child: Container(
                                  width: 107,
                                  height: 91,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: FlutterLogo(),
                                ),
                              ),
                              Positioned(
                                left: 158,
                                top: 55,
                                child: Text(
                                  'Joined  1/20/23',
                                  style: TextStyle(
                                    color: Color(0xFF9D9D9D),
                                    fontSize: 24,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w900,
                                    height: 0.05,
                                    letterSpacing: 0.30,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 142,
                                top: 0,
                                child: SizedBox(
                                  width: 212,
                                  height: 36,
                                  child: Text(
                                    'Account Created',
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 374,
                top: 312,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/32x32"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 312,
                child: SizedBox(
                  width: 249,
                  height: 36,
                  child: Text(
                    'Matthew Mckenry',
                    style: TextStyle(
                      color: Colors.white,
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
                left: 10,
                top: 10,
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.only(top: 16.22, bottom: 16.40),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
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