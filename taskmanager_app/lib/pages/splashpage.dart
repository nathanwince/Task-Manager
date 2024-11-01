import 'package:flutter/material.dart';
import 'onboarding_1.dart'; // Import your onboarding page
import '../widgets/onboarding/widgets/getstarted_button.dart'; // Import the GetStartedButton widget
import '../widgets/onboarding/widgets/rollcall_logo.dart'; // Import the RollcallLogo widget
import '../widgets/onboarding/widgets/rollcall_title.dart'; // Import the RollcallTitle widget

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic structure for the page
      body: Container(
        width: double.infinity,  // Full width of the screen
        height: double.infinity, // Full height of the screen
        decoration: BoxDecoration(
          color: Color(0xFF03174C),  // Set the background color
        ),
        child: Stack(
          // Stack allows overlapping widgets
          children: [
            // Title Widget
            Positioned(
              left: 115, // Position the title horizontally
              right: 115,
              top: 196,  // Position the title vertically
              child: RollcallTitle(), // Title widget
            ),
            // Logo Widget
            Positioned(
              left: 33, // Position the logo horizontally
              top: 291,    // Position the logo vertically
              right: 33,
              child: RollcallLogo(), // Logo widget
            ),
            // Get Started Button
            Positioned(
              left: 36, // Position the button horizontally
              top: 816, // Position the button vertically
              right: 36,
              child: GetStartedButton(
                // Create an instance of the GetStartedButton
                onPressed: () {
                  // Define the action when the button is pressed
                  Navigator.push(
                    context, // Get the current context
                    MaterialPageRoute(builder: (context) => Onboarding01()), // Navigate to Onboarding Page 1
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
