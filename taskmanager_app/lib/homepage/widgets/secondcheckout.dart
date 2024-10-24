import 'package:flutter/material.dart';

class SecondCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        children: [
          // View Calendar Button
          Padding(
            padding: EdgeInsets.only(left: 6, right: 12), // Consistent padding to match vertical spacing
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/calendar'); // Navigate to Calendar Page
              },
              child: Container(
                width: 270, // Increased width for better fit
                height: 110,
                child: Stack(
                  children: [
                    Container(
                      width: 270,
                      height: 110,
                      decoration: ShapeDecoration(
                        color: Color(0xFF2AACC0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x662AACC0),
                            blurRadius: 0,
                            offset: Offset(4, 4),
                            spreadRadius: 0,
                          ),
                          BoxShadow(
                            color: Color(0x992AACC0),
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
                        'View\nCalendar',
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
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/calendar_icon1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Today’s Tasks Button
          Padding(
          padding: EdgeInsets.only(left: 12, right: 6), // Consistent padding to match vertical spacing
          child: GestureDetector(
          onTap: () {
              Navigator.pushNamed(context, '/taskpage');  // Navigate to TaskPage when tapped
              },
            child: Container(
              width: 270,
              height: 110,
              child: Stack(
                children: [
                  Container(
                    width: 270,
                    height: 110,
                    decoration: ShapeDecoration(
                      color: Color(0xFF49B160), // Match color of View Calendar
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x6649B160),
                          blurRadius: 0,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Color(0x9949B160),
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
                      'Today’s\nTasks',
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
                    top: 20,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/notebook_icon.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         ),
        ],
      ),
    );
  }
}