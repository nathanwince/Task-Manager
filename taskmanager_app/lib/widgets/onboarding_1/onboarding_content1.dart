import 'package:flutter/material.dart';

class OnboardingSlide1 extends StatelessWidget {
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
                image: AssetImage("assets/images/onboarding1.png"), // Update with your actual image path
                fit: BoxFit.cover, // Maintain aspect ratio
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        
        // Title Text with its padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for the title
          child: Text(
            'Stay Organized, Stress-Free',
            textAlign: TextAlign.center, // Center the text
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        
        const SizedBox(height: 8.0), // Space between the two lines of text
        
        // Description Text with different horizontal padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80.0), // Different horizontal padding for the description
          child: Text(
            'Effortlessly manage all your tasks in one place, so you can focus on what truly matters.',
            textAlign: TextAlign.center, // Center the text
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w300,
              height: 1.2, // Adjusted line height for better readability
            ),
          ),
        ),
      ],
    );
  }
}