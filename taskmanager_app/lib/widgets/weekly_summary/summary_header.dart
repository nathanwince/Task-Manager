import 'package:flutter/material.dart';
import '/shared/backarrow_button.dart';
import '/widgets/weekly_summary/completed_tasks.dart';
import '/widgets/weekly_summary/weekly_summaries.dart';

const double kHeaderPadding = 16.0;
const double kVerticalPadding = 10.0;
const Color kHeaderBackgroundColor = Color(0xFF1D2550); // Light background color for the header section
const Color kDividerColor = Color(0xFF303B75); // Color for the dividing line

class SummaryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kHeaderBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: kDividerColor,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Back Arrow aligned to the left without padding
          Align(
            alignment: Alignment.centerLeft,
            child: BackArrowWidget(), // Custom widget for back navigation
          ),

          // Padding applied only to CompletedTasks and WeeklySummary widgets
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHeaderPadding, vertical: kVerticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Completed Tasks widget centered
                Center(child: CompletedTasks()),

                // Weekly Summary widget centered
                Center(child: WeeklySummary()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}