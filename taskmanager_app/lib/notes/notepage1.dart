import 'package:flutter/material.dart';
import 'package:taskmanager_app/notes/widgets/note_notes.dart';
import 'package:taskmanager_app/notes/widgets/note_recent.dart';
import 'widgets/note_title1.dart'; // Import the notepage title widget
import 'widgets/note_pinned.dart'; // Import the notepage title widget


class NotePage extends StatelessWidget {
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
                child: NoteRecent(),
              ),
              Positioned(
                child: NoteNotes(),
              ),
              Positioned(
                child: NotePinned(),
              ),
              Positioned(
                left: 86,
                top: -297.28,
                child: Container(
                  width: 607.33,
                  height: 532.08,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 432.64,
                        top: 532.08,
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
                        top: 341.28,
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
                                child: NoteTitle(),  // Use the header widget
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