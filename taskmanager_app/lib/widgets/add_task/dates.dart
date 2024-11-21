import 'package:flutter/material.dart';

const double kDateBoxPadding = 8.0;
const double kDateBoxRadius = 8.0;
const double kDateFontSize = 16.0;
const Color kDateBoxColor = Color(0xFF1E295E);
const Color kSelectedDateColor = Color(0xFF94D762);
const Color kUnselectedDateColor = Colors.white;

class Dates extends StatelessWidget {
  final Function(DateTime) onDateSelected;
  final DateTime? selectedDate;

  const Dates({Key? key, required this.onDateSelected, this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        if (pickedDate != null) {
          onDateSelected(pickedDate);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(kDateBoxPadding),
        decoration: BoxDecoration(
          color: kDateBoxColor,
          borderRadius: BorderRadius.circular(kDateBoxRadius),
        ),
        child: Text(
          selectedDate == null
              ? "Select Date"
              : "Selected: ${selectedDate!.toLocal()}".split(' ')[0],
          style: TextStyle(
            color: selectedDate == null
                ? kUnselectedDateColor
                : kSelectedDateColor,
            fontSize: kDateFontSize,
          ),
        ),
      ),
    );
  }
}
