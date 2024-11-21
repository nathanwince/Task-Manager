import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/daily_motivation/motivation_container.dart'; 
import '../widgets/daily_motivation/motivation_tip.dart';
import '../widgets/daily_motivation/motivation_title.dart';

const Color kBackgroundColor = Color(0xFF03174C);
const double kSectionSpacing = 16.0;

class DailyMotivationPage extends StatelessWidget {
   final int userId; // Accept userId dynamically

  const DailyMotivationPage({Key? key, required this.userId}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
          children: [
            // Back Arrow Button (no need for additional padding here)
            BackArrowWidget(), // Custom widget for back navigation

            // Centered Motivation Title
            Center(child: MotivationTitle()), // Center the title horizontally

            // Motivation Tip
            Center(child: MotivationTip()), // Center the tip horizontally

            // Motivation Holder
            Center(child: MotivationHolder(userId: userId)), // Center the holder horizontally
            // Center the holder horizontally

            // Optionally, add more spacing before the Navbar
            SizedBox(height: kSectionSpacing),
          ],
        ),
      ),
            bottomNavigationBar: Navbar(userId: userId)
, // Use bottomNavigationBar instead of placing it in the Column
    );
  }
}