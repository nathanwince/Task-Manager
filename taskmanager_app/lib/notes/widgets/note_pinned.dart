import 'package:flutter/material.dart';

class NotePinned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Positioned(
          left: 15,
          top: 171,
          child: Container(
            width: 400,
            height: 114,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 27,
                  child: Container(
                    width: 400,
                    height: 87,
                    padding: const EdgeInsets.only(
                      top: 181,
                      left: 25,
                      right: 31,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE2F2FF),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Color(0xFF6C7EA0),
                        ),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
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
                                      image: NetworkImage(
                                        "https://via.placeholder.com/107x107",
                                      ),
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
                        const SizedBox(height: 39),
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
                                      image: NetworkImage(
                                        "https://via.placeholder.com/107x107",
                                      ),
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
                    width: 91,
                    height: 12,
                    child: Text(
                      'Pinned',
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
                  left: 16,
                  top: 54,
                  child: Container(
                    width: 183,
                    height: 33,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 23,
                          child: SizedBox(
                            width: 183,
                            height: 10,
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
                            width: 60,
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
          ),
        ),
      ],
    );
  }
}
