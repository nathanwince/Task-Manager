import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
                left: 117,
                top: 69,
                child: SizedBox(
                  width: 196,
                  height: 82,
                  child: Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE2F2FF),
                      fontSize: 48,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 0.01,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 165,
                top: 173,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(21),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFFE2F2FF),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 3,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 278,
                child: Container(
                  width: 370,
                  height: 424,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 370,
                          height: 88,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 32,
                                child: Container(
                                  width: 370,
                                  height: 56,
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
                                      ),BoxShadow(
                                        color: Color(0x99E2F2FF),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 334,
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
                                              left: 127,
                                              top: 0,
                                              child: SizedBox(
                                                width: 207,
                                                height: 36,
                                                child: Text(
                                                  'Notes',
                                                  style: TextStyle(
                                                    color: Color(0xFF1CB0F6),
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
                                              left: 128,
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
                                      Container(
                                        width: 344,
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
                                              left: 137,
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.05,
                                                    letterSpacing: 0.30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 137,
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 67,
                                  height: 28,
                                  child: Text(
                                    'Name',
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
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 112,
                        child: Container(
                          width: 370,
                          height: 88,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 32,
                                child: Container(
                                  width: 370,
                                  height: 56,
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
                                      ),BoxShadow(
                                        color: Color(0x99E2F2FF),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 334,
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
                                              left: 127,
                                              top: 0,
                                              child: SizedBox(
                                                width: 207,
                                                height: 36,
                                                child: Text(
                                                  'Notes',
                                                  style: TextStyle(
                                                    color: Color(0xFF1CB0F6),
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
                                              left: 128,
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
                                      Container(
                                        width: 344,
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
                                              left: 137,
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.05,
                                                    letterSpacing: 0.30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 137,
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 66,
                                  height: 28,
                                  child: Text(
                                    'Email',
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
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 224,
                        child: Container(
                          width: 370,
                          height: 88,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 32,
                                child: Container(
                                  width: 370,
                                  height: 56,
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
                                      ),BoxShadow(
                                        color: Color(0x99E2F2FF),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/25x25"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(width: 20, height: 20),
                                      Container(
                                        width: 334,
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
                                              left: 127,
                                              top: 0,
                                              child: SizedBox(
                                                width: 207,
                                                height: 36,
                                                child: Text(
                                                  'Notes',
                                                  style: TextStyle(
                                                    color: Color(0xFF1CB0F6),
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
                                              left: 128,
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
                                      Container(
                                        width: 344,
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
                                              left: 137,
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.05,
                                                    letterSpacing: 0.30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 137,
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 171,
                                  height: 28,
                                  child: Text(
                                    'Phone Number',
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
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 336,
                        child: Container(
                          width: 370,
                          height: 88,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 32,
                                child: Container(
                                  width: 370,
                                  height: 56,
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
                                      ),BoxShadow(
                                        color: Color(0x99E2F2FF),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(width: 30, height: 30),
                                      Container(width: 30, height: 30),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage("https://via.placeholder.com/30x30"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 334,
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
                                              left: 127,
                                              top: 0,
                                              child: SizedBox(
                                                width: 207,
                                                height: 36,
                                                child: Text(
                                                  'Notes',
                                                  style: TextStyle(
                                                    color: Color(0xFF1CB0F6),
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
                                              left: 128,
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
                                      Container(
                                        width: 344,
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
                                              left: 137,
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
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.05,
                                                    letterSpacing: 0.30,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 137,
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
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 114,
                                  height: 28,
                                  child: Text(
                                    'Password',
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
                            ],
                          ),
                        ),
                      ),
                    ],
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
              Positioned(
                left: 26,
                top: 745,
                child: Container(
                  width: 374,
                  height: 56,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 374,
                          height: 56,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 374,
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFFF9A00),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1, color: Color(0xFF564645)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x66FF9A00),
                                        blurRadius: 0,
                                        offset: Offset(4, 4),
                                        spreadRadius: 0,
                                      ),BoxShadow(
                                        color: Color(0x99FF9A00),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 21.37,
                                top: 15.50,
                                child: SizedBox(
                                  width: 223.92,
                                  child: Text(
                                    'Create Profile',
                                    style: TextStyle(
                                      color: Color(0xFFE2F2FF),
                                      fontSize: 18,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
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
      ],
    );
  }
}
