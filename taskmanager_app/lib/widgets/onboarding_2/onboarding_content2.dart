
import 'package:flutter/material.dart';

class OnboardingSlide2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
      children: [
        // Image in the center
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0), // Vertical padding above and below the image
          child: Container(
            width: 360, // Width of the image
            height: 270, // Height of the image
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/onboarding2.png"), // Update with your actual image path
                fit: BoxFit.cover, // Maintain aspect ratio
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        // Text below the image
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for text
          child: Text(
            'Achieve Your Goals,\nOne Step at a Time',
            textAlign: TextAlign.center, // Center the text
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
              height: 1.2, // Adjusted line height for better readability
            ),
          ),
        ),
      ],
    );
  }
}