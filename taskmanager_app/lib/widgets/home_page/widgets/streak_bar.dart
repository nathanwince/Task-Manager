import 'package:flutter/material.dart';

// Key constants for layout and styling
const double kStreakBarHeight = 34.0;
const double kIconSize = 25.0;
const double kProgressBarHeight = 10.0;
const double kProgressWidthFactor = 0.4; // Example progress of 40%
const double kHorizontalPadding = 16.0;

class StreakBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      Container(
        height: kStreakBarHeight,
        decoration: BoxDecoration(
          color: const Color(0xFFFFC800),
          borderRadius: BorderRadius.circular(23),
          boxShadow: [
            BoxShadow(
              color: const Color(0x998C7213),
              blurRadius: 2,
              offset: const Offset(2, 3),
            ),
            BoxShadow(
              color: const Color(0x998C7213),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            // Fire icon with left padding
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                "assets/images/firetask_logo.png",
                width: kIconSize,
                height: kIconSize,
              ),
            ),
            // Task count text with consistent left padding
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '5 tasks remaining',
                style: const TextStyle(
                  color: Color(0xFF8C4814),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Progress bar with horizontal padding for alignment
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                height: kProgressBarHeight,
                decoration: BoxDecoration(
                  color: Color(0xFFB97215),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: kProgressWidthFactor,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFF8700),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for consistent horizontal padding
  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: child,
    );
  }
}