import 'package:flutter/material.dart';

class FirstCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          // Daily Motivation Button
          Padding(
            padding: EdgeInsets.only(left: 6, right: 12), // Consistent padding to match vertical spacing
            child: Container(
              width: 270, // Increased width for better fit
              height: 110,
              child: Stack(
                children: [
                  Container(
                    width: 270,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Color(0xFF604EB6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x66604EB6),
                          blurRadius: 0,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x99604EB6),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 26,
                    child: Text(
                      'Daily\nMotivation', // Adjusted line height
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w800,
                        height: 1.5, // Slightly increased line height for more spacing
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 20, // Adjust top position for centering
                    child: Container(
                      width: 70, // Increased width for larger image
                      height: 70, // Increased height for larger image
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/books_icon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Weekly Summary Button
          Padding(
            padding: EdgeInsets.only(left: 12, right: 6), // Consistent padding to match vertical spacing
            child: Container(
              width: 270,
              height: 110,
              child: Stack(
                children: [
                  Container(
                    width: 270,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE2AC5F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x66E2AC5F),
                          blurRadius: 0,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x99E2AC5F),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 26,
                    child: Text(
                      'Weekly\nSummary',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w800,
                        height: 1.5, // Slightly increased line height for more spacing
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 20, // Adjust top position for centering
                    child: Container(
                      width: 70, // Increased width for larger image
                      height: 70, // Increased height for larger image
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/shopping_icon.png"),
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
    );
  }
}