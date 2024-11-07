import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/home_page/header.dart';
import '../widgets/home_page/firstcheckout.dart';
import '../widgets/home_page/secondcheckout.dart';
import '../widgets/home_page/streak_bar.dart';
import '../widgets/home_page/upcoming_tasks.dart';
import '../widgets/home_page/date_display.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Wrap your column in a SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            const SizedBox(height: kSectionSpacing),

            // Using _buildSection for consistent padding and alignment
            _buildSection(DateDisplay(date: "October 8th")),
            _buildSection(StreakBar()),
            _buildSection(UpcomingTasks()),
            _buildSection(FirstCheckout()),
            _buildSection(SecondCheckout()),

            const SizedBox(height: kLargeSpacing), // Extra spacing at the bottom if needed
          ],
        ),
      ),
      bottomNavigationBar: Navbar(), // Use bottomNavigationBar instead of placing it in the Column
    );
  }

  // Helper function to add consistent padding and spacing to sections
  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          child,
          SizedBox(height: kSectionSpacing), // Spacing between sections
        ],
      ),
    );
  }
}