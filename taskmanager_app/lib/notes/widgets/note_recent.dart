import 'package:flutter/material.dart';

class NoteRecent extends StatelessWidget {
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
                left: 15,
                top: 688,
                child: Container(
                  height: 122,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 42,
                        child: Container(
                          width: 400,
                          height: 80,
                          padding: const EdgeInsets.only(
                            top: 22.50,
                            left: 16,
                            right: 201,
                            bottom: 22.50,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE2F2FF),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1, 
                                color: Color(0xFF6C7EA0),
                              ),
                              borderRadius: BorderRadius.circular(22.95),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 183,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 24,
                                      child: SizedBox(
                                        width: 183,
                                        height: 11,
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
                                        height: 12,
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
                            'January',
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
      ],
    );
  }
}