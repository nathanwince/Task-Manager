import 'package:flutter/material.dart';
import 'package:taskmanager_app/homepage/homepage.dart';
import 'package:taskmanager_app/onboarding/widgets/onboarding_text3.dart'; // Import the text widget for the third onboarding slide
import 'widgets/next_button.dart'; // Import the NextButton widget
import 'widgets/onboarding_header.dart'; // Import the RollcallHeader widget
import 'widgets/onboarding_slide3.dart'; // Import the content for the third onboarding slide

class Onboarding03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF03174C), // Background color
        child: Stack(
          children: [
            // Positioned Header
            Positioned(
              left: 16, // 16px from the left
              top: 16,  // 16px from the top
              child: RollCallHeader(),  // Use the header widget
            ),

            // Onboarding Text Content
            Positioned(
              left: 83, // Adjust based on the design
              top: 551, // Adjust this value based on your design
              right: 83, // Ensure it stretches across evenly
              child: OnboardingText03(),  // Add your text widget for this slide
            ),

            // Onboarding Slide (Below the text)
            Positioned(
              left: 186, // Centered position (adjust if necessary)
              bottom: 219, // Adjust this value to position slide
              right: 186, // Align with left for symmetry
              child: OnboardingSlide03(), // The content for the third onboarding slide
            ),

            // Positioned Next Button
            Positioned(
              left: 36, // 16px from the left
              bottom: 81, // 81px from the bottom
              right: 36, // 16px from the right
              child: NextButton01(
                onPressed: () {
                  // Action for the button, e.g., finishing onboarding
                  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => HomePage()), // Ensure HomePage is defined
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
