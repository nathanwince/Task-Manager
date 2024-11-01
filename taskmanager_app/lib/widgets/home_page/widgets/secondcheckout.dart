import 'package:flutter/material.dart';

// Constants for frequently used values
const double kCardWidth = 270.0;
const double kCardHeight = 110.0;
const double kImageSize = 70.0;
const double kHorizontalPadding = 16.0;
const double kSpaceBetweenTextAndImage = 20.0; // Adjusted for visual alignment
const TextStyle kTitleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w800,
  height: 1.5,
);

class SecondCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // View Calendar Card
            _buildCheckoutCard(
              title: 'View\nCalendar',
              color: const Color(0xFF2AACC0),
              imagePath: "assets/images/calendar_icon1.png",
              onTap: () {
                Navigator.pushNamed(context, '/calendar');
              },
            ),
            // Today’s Tasks Card
            _buildCheckoutCard(
              title: 'Today’s\nTasks',
              color: const Color(0xFF49B160),
              imagePath: "assets/images/notebook_icon.png",
              onTap: () {
                Navigator.pushNamed(context, '/taskpage');
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a section with consistent padding
  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: child,
    );
  }

  // Helper method to build each checkout card
  Widget _buildCheckoutCard({
    required String title,
    required Color color,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding / 2),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: kCardWidth,
          height: kCardHeight,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 0,
                offset: const Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: color.withOpacity(0.6),
                blurRadius: 4,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: kTitleTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: kImageSize,
                  height: kImageSize,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}