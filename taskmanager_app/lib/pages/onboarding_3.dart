import 'package:flutter/material.dart';
import 'package:taskmanager_app/pages/homepage.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
        children: [

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
      bottomNavigationBar: NextButton01(
        onPressed: () {
          // Navigate to the next onboarding page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
      ),
    );
  }
}