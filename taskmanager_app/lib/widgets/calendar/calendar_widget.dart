import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime selectedDate; // Current selected date
  final Function(DateTime) onDateSelected; // Callback for date selection

  CalendarWidget({required this.onDateSelected, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    // Calculate the number of days in the current month
    final daysInMonth = DateTime(selectedDate.year, selectedDate.month + 1, 0).day;
    // Calculate the starting weekday of the current month
    final startingWeekday = DateTime(selectedDate.year, selectedDate.month, 1).weekday;

    return Column(
      children: [
        // Days of the Week Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Table(
            children: [
              TableRow(
                children: ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"]
                    .map((label) => _buildDayLabel(label))
                    .toList(),
              ),
            ],
          ),
        ),

        // Calendar Grid
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: daysInMonth + (startingWeekday - 1), // Add empty slots for starting offset
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7, // 7 days in a week
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            // Empty slots before the first day of the month
            if (index < startingWeekday - 1) {
              return Container(); // Empty slot
            }

            // Calculate the day number
            final dayNumber = index - (startingWeekday - 2);
            final isSelected = selectedDate.day == dayNumber &&
                selectedDate.month == selectedDate.month &&
                selectedDate.year == selectedDate.year;

            return GestureDetector(
              onTap: () => onDateSelected(DateTime(
                selectedDate.year,
                selectedDate.month,
                dayNumber,
              )),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFF94D762) : const Color(0xFF1F265E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "$dayNumber",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // Helper to build day labels
  Widget _buildDayLabel(String label) {
    return Center(
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Nunito',
        ),
      ),
    );
  }
}
