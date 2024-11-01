import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/home_page/widgets/header.dart';
import '../widgets/home_page/widgets/firstcheckout.dart';
import '../widgets/home_page/widgets/secondcheckout.dart';
import '../widgets/home_page/widgets/streak_bar.dart';
import '../widgets/home_page/widgets/upcoming_tasks.dart';
import '../widgets/home_page/widgets/date_display.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          const SizedBox(height: kSectionSpacing),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Using _buildSection for consistent padding and alignment
                _buildSection(DateDisplay(date: "October 8th")),
                _buildSection(StreakBar()),
                _buildSection(UpcomingTasks()),
                _buildSection(FirstCheckout()),
                _buildSection(SecondCheckout()),
              ],
            ),
          ),
          
          Navbar(),
        ],
      ),
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