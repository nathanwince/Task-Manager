import 'package:flutter/material.dart';
import '../pages/signup.dart'; // Import the SignUp page
import '../pages/login.dart'; // Import the Login page
import '../shared/next_button.dart'; 
import '../shared/onboarding_header.dart'; 
import '../shared/slide_indicator.dart'; 
import '../widgets/onboarding_3/onboarding_content3.dart'; 

const Color kBackgroundColor = Color(0xFF03174C);

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            // Onboarding Header
            OnboardingHeader(),

            const SizedBox(height: 80), // Space below the header

            // Onboarding Slide Content
            OnboardingSlide3(),

            const SizedBox(height: 150), // Space before the indicator

            // Centered Slide Indicator
            Center(
              child: SlideIndicator(currentIndex: 2, totalSlides: 3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Sign Up page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8), // Spacing between buttons
          TextButton(
            onPressed: () {
              // Navigate to Login page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            child: const Text(
              "Already have an account? Log in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}