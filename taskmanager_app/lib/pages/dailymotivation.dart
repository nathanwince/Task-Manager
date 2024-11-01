import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/daily_motivation/widgets/motivation_container.dart'; // Ensure this widget is correctly implemented
import '../widgets/daily_motivation/widgets/motivation_tip.dart';
import '../widgets/daily_motivation/widgets/motivation_title.dart';
import '../widgets/daily_motivation/widgets/motivation_viewtext.dart';

class DailyMotivationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Background color to match your theme
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          // Back Arrow Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: BackArrowWidget(), // Custom widget for back navigation
          ),

          // Centered Motivation Title
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0), // Space between the arrow and title
              child: Text(
                "Daily Motivation", // Update the title as needed
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36, // Font size for the title
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),

          // Motivation Container (adjust height as needed)
          Expanded(
            child: Container(
              width: double.infinity, // Use full width
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Color(0xFF03174C), // Container background color
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 86,
                    top: -297.28,
                    child: MotivationHolder(), // Your MotivationHolder widget
                  ),
                  Positioned(
                    left: 18,
                    top: 189,
                    child: MotivationTip(), // Your MotivationTip widget
                  ),
                  Positioned(
                    left: 18,
                    top: 356,
                    child: MotivationTitle(), // Your MotivationTitle widget
                  ),
                  Positioned(
                    left: 18,
                    top: 322,
                    child: SizedBox(
                      width: 67,
                      height: 12,
                      child: Text(
                        'View ',
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
                ],
              ),
            ),
          ),

          // Navbar at the bottom
          Navbar(),
        ],
      ),
    );
  }
}
