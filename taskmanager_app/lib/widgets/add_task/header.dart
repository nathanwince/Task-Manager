import 'package:flutter/material.dart';
import 'dates.dart';

const double kHeaderPadding = 16.0;
const double kVerticalPadding = 10.0;
const double kTextSpacing = 10.0;
const double kHeaderFontSize = 32.0; // Adjusted for readability
const Color kHeaderBackgroundColor = Color(0xFF03174C); // Matches background color
const Color kTextColor = Color(0xFF94D762);
const Color kBorderColor = Color(0xFF303B75);

class Header extends StatelessWidget {
  final Function(DateTime) onDateSelected; // Callback to parent
  final DateTime? selectedDate; // Allows showing the currently selected date

  const Header({Key? key, required this.onDateSelected, this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kHeaderPadding,
        vertical: kVerticalPadding,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Center(
            child: Text(
              "Add Task",
              style: TextStyle(
                color: kTextColor,
                fontSize: kHeaderFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
          ),
          const SizedBox(height: kTextSpacing * 2),

          // Dates Widget
          Dates(
            onDateSelected: onDateSelected,
            selectedDate: selectedDate,
          ),
        ],
      ),
    );
  }
}
