import 'package:flutter/material.dart';
import 'package:taskmanager_app/onboarding/onboarding_3.dart';
import 'package:taskmanager_app/onboarding/widgets/onboarding_text2.dart';
import 'widgets/next_button.dart'; // Import the NextButton widget
import 'widgets/onboarding_header.dart'; // Import the RollcallHeader widget
import 'widgets/onboarding_slide2.dart'; // Import the content for the second onboarding slide

class Onboarding02 extends StatelessWidget {
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
              left: 16, // Adjust the left position (e.g., 16px)
              top: 16, // Adjust the top position (e.g., 16px)
              child: RollCallHeader(),  // Use the header widget
            ),

            // Onboarding Text Content (Position it exactly where needed)
            Positioned(
              left: 62, // Adjust based on the design
              top: 515, // Adjust this value as needed
              right: 62, // Align this with the left value for consistency
              child: OnboardingText02(),  // Add your text widget here
            ),

            // Onboarding Slide (Below the text)
            Positioned(
              left: 188, // Adjust based on the design
              bottom: 219, // Adjust this value based on the design
              right: 186, // Align it with the left for proper centering
              child: OnboardingSlide02(), // The content of the second onboarding slide
            ),

            // Positioned Next Button
            Positioned(
              left: 36, // Adjust based on the design
              bottom: 81, // Adjust based on the design
              right: 36, // Align it with the left for consistency
              child: NextButton01(
                onPressed: () {
                  // Navigate to the next onboarding page or finish onboarding
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding03()), // Ensure Onboarding03 is defined
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
