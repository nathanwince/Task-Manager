import 'package:flutter/material.dart';
import 'package:taskmanager_app/pages/onboarding_2.dart';
import '../shared/next_button.dart'; 
import '../shared/onboarding_header.dart'; 
import '../shared/slide_indicator.dart'; 
import '../widgets/onboarding_1/onboarding_content1.dart'; 

const Color kBackgroundColor = Color(0xFF03174C);

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            OnboardingHeader(),

            const SizedBox(height: 80), // Space below the header

            // Onboarding Slide Content
            OnboardingSlide1(),

            const SizedBox(height: 150), // Space before the indicator

            // Centered Slide Indicator
            Center(
              child: SlideIndicator(currentIndex: 0, totalSlides: 3),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NextButton01(
        onPressed: () {
          // Navigate to the next onboarding page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Onboarding2()),
          );
        },
      ),
    );
  }
}