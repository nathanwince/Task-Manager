import 'package:flutter/material.dart';
import 'onboarding_1.dart'; // Import your onboarding page
import '../widgets/splash_page/getstarted_button.dart'; // Import the GetStartedButton widget
import '../widgets/splash_page/rollcall_header.dart'; // Import the RollCallHeader widget

const Color kBackgroundColor = Color(0xFF03174C);

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center( // Center the content in the body
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RollCallHeader(), // Centered RollCallHeader
            const SizedBox(height: 30), // Space between logo and button
          ],
        ),
      ),
      bottomNavigationBar: GetStartedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Onboarding1()),
          );
        },
      ),
    );
  }
}