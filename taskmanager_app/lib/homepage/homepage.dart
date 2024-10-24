import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/navbar.dart';
import 'widgets/firstcheckout.dart';
import 'widgets/secondcheckout.dart';
import 'widgets/streak_bar.dart';
import 'widgets/upcoming_tasks.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(), // Include the header at the top

          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Today's Date Section
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 30.0), // Increased bottom padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Today's Date",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        SizedBox(height: 2), // Reduced gap between text
                        Center(
                          child: Text(
                            "October 8th",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0), // More padding between date and streak bar
                    child: StreakBar(), // Display the streak bar
                  ),

                  // Upcoming Tasks Title
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 14.0), // Increased spacing
                    child: Text(
                      "Upcoming Tasks",
                      style: TextStyle(
                        color: Color.fromARGB(255, 230, 69, 205), // Matching the pink/purple color
                        fontSize: 24,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),

                  // Upcoming Tasks Section
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0), // Consistent vertical padding
                    child: UpcomingTasks(),
                  ),

                  // Check Out Title
                  Padding(
                    padding: EdgeInsets.only(bottom: 14.0), // Adjusted for spacing
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                        color: Color.fromARGB(255, 24, 219, 86), // Matching green color
                        fontSize: 24,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),

                  // Checkout Sections
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0), // Adjusted padding for more space between first row and below
                    child: FirstCheckout(),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 0.0), // Consistent top padding for symmetry
                    child: SecondCheckout(),
                  ),
                ],
              ),
            ),
          ),

          Navbar(), // Add the navbar at the bottom
        ],
      ),
    );
  }
}