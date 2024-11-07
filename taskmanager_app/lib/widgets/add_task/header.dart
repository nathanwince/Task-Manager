import 'package:flutter/material.dart';
import '/shared/backarrow_button.dart'; 
import 'dates.dart'; 

const double kHeaderPadding = 16.0;
const double kVerticalPadding = 10.0;
const double kTextSpacing = 4.0;
const double kHeaderFontSize = 40.0;
const Color kHeaderBackgroundColor = Color(0xFF1D2550);
const Color kTextColor = Color(0xFF94D762);
const Color kBorderColor = Color(0xFF303B75);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kHeaderPadding, vertical: kVerticalPadding),
      decoration: const BoxDecoration(
        color: kHeaderBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: kBorderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Back Arrow aligned to the left
          Align(
            alignment: Alignment.centerLeft,
            child: BackArrowWidget(), // Custom widget for back navigation
          ),

          // "Add Task" Text centered with no extra spacing above it
          Center(
            child: Text(
              "Add Task",
              style: const TextStyle(
                color: kTextColor,
                fontSize: kHeaderFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
          ),

          // Space between "Add Task" and Dates
          const SizedBox(height: kTextSpacing),

          // Dates widget positioned below the "Add Task" text
          Dates(), 
        ],
      ),
    );
  }
}