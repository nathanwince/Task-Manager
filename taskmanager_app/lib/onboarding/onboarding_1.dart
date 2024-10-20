import 'package:flutter/material.dart';
import 'package:taskmanager_app/onboarding/onboarding_2.dart';
import 'widgets/next_button.dart'; // Import the NextButton widget
import 'widgets/onboarding_header.dart'; // Import the RollcallHeader widget
import 'widgets/onboarding_slide1.dart'; // Import the content for the first onboarding slide
import 'widgets/onboarding_text1.dart'; // Import the text widget for the first onboarding slide

class Onboarding01 extends StatelessWidget {
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
              left: 38.5, // 38.5px from the left
              right: 38.5, // 38.5px from the right
              top: 400, // Adjust this value as necessary
              child: OnboardingText01(), // The text content of the onboarding screen
            ),

            // Onboarding Slide Content
            Positioned(
              left: 186, // Centered in the middle
              right: 186, // Ensure it stretches across
              bottom: 200, // Adjust this value to fit within the screen height
              child: OnboardingSlide01(), // The image content of the onboarding screen
            ),

            // Positioned Next Button
            Positioned(
              left: 36, // 36px from the left
              right: 36, // 36px from the right
              bottom: 81, // 81px from the bottom
              child: NextButton01(
                onPressed: () {
                  // Navigate to the next onboarding page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding02()),
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
