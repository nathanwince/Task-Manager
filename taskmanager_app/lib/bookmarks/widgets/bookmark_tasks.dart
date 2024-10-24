import 'package:flutter/material.dart';

class BookmarkTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          // First Video Recording Button
          Container(
            width: 235,
            height: 140,
            margin: EdgeInsets.only(left: 12, right: 12), // Adjusted margin for consistent spacing
            child: Stack(
              children: [
                Container(
                  width: 235,
                  height: 140,
                  decoration: ShapeDecoration(
                    color: Color(0xFFCE4E50), // Red color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x66CE4E50), // Shadow color
                        blurRadius: 0,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x99CE4E50), // Shadow color
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    'Video\nRecording', // Adjusted to show "Video" on top and "Recording" below
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 1.5, // Slightly increased line height for more space
                    ),
                  ),
                ),
                Positioned(
                  right: 16, // Align closer to the right
                  top: 108,
                  child: Text(
                    '09:30 AM',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Container(
                    width: 208,
                    height: 115,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 162,
                          top: 0,
                          child: Container(
                            width: 46,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFFF67375), // Lighter red for priority
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 167.50,
                          top: 1,
                          child: Text(
                            'High',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 89,
                          child: Container(
                            width: 79,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE6DADA), // Light background for activity
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x66F67375), // Shadow color
                                  blurRadius: 0,
                                  offset: Offset(2, 2),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x99F67375), // Shadow color
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Activity',
                                style: TextStyle(
                                  color: Color(0xFFCE4E50), // Red color for text
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
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
          // Second Video Recording Button
          Container(
            width: 235,
            height: 140,
            margin: EdgeInsets.only(left: 12, right: 12), // Adjusted margin for consistent spacing
            child: Stack(
              children: [
                Container(
                  width: 235,
                  height: 140,
                  decoration: ShapeDecoration(
                    color: Color(0xFFB97215), // Orange color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x66B97215), // Shadow color
                        blurRadius: 0,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Color(0x99B97215), // Shadow color
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    'Video\nRecording', // Adjusted to show "Video" on top and "Recording" below
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 1.5, // Slightly increased line height for more space
                    ),
                  ),
                ),
                Positioned(
                  right: 16, // Align closer to the right
                  top: 108,
                  child: Text(
                    '09:30 AM',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Container(
                    width: 208,
                    height: 114,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 138,
                          top: 0,
                          child: Container(
                            width: 70,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFDAA31), // Lighter orange for priority
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 143,
                          top: 1.50,
                          child: Text(
                            'Medium',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 88,
                          child: Container(
                            width: 79,
                            height: 26,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE6DADA), // Light background for activity
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              shadows: [
                                BoxShadow(
                                  color: Color(0x66FDAA31), // Shadow color
                                  blurRadius: 0,
                                  offset: Offset(2, 2),
                                  spreadRadius: 0,
                                ),
                                BoxShadow(
                                  color: Color(0x99FDAA31), // Shadow color
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Activity',
                                style: TextStyle(
                                  color: Color(0xFFB97215), // Orange color for text
                                  fontSize: 16,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
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
        ],
      ),
    );
  }
}