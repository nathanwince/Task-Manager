import 'package:flutter/material.dart';

const double kOuterContainerHeight = 50.0; // Height of the outer container
const double kProgressBarHeight = 12.0; // Height of the progress bar
const double kIconSize = 36.0; // Fire icon size
const double kHorizontalPadding = 16.0; // Horizontal padding for the container

class StreakBar extends StatelessWidget {
  final int tasksRemaining;
  final int totalTasks;
  final int streakCount;

  const StreakBar({
    Key? key,
    required this.tasksRemaining,
    required this.totalTasks,
    required this.streakCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate progress bar fill factor
    double progressWidthFactor = totalTasks == 0
        ? 0.0
        : (totalTasks - tasksRemaining) / totalTasks;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Container(
        height: kOuterContainerHeight,
        decoration: BoxDecoration(
          color: const Color(0xFFFFC800), // Yellow background color
          borderRadius: BorderRadius.circular(25), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: const Color(0x998C7213), // Shadow color
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Fire Icon with Streak Count
            Padding(
              padding: const EdgeInsets.only(left: 12.0), // Space to the left
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/firetask_logo.png",
                    width: kIconSize,
                    height: kIconSize,
                  ),
                  if (streakCount > 0)
                    Text(
                      '$streakCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12.0), // Space between icon and text

            // Task Remaining Text
            Text(
              '$tasksRemaining tasks remaining',
              style: const TextStyle(
                color: Color(0xFFD91E18), // Red text color
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 12.0), // Space between text and bar

            // Progress Bar
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // Background of the progress bar
                  Container(
                    height: kProgressBarHeight,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB97215), // Bar background color
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  // Progress Fill
                  FractionallySizedBox(
                    alignment: Alignment.centerLeft,
                    widthFactor: progressWidthFactor,
                    child: Container(
                      height: kProgressBarHeight,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF8700), // Fill color
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12.0), // Right padding for balance
          ],
        ),
      ),
    );
  }
}
