import 'package:flutter/material.dart';

const double kDateColumnWidth = 40.0;
const double kDatePadding = 8.0;
const Color kSelectedDateColor = Color(0xFF94D762);
const TextStyle kDateTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w800,
  height: 1.2,
);

class Dates extends StatefulWidget {
  final Function(DateTime) onDateSelected; // Callback to send the selected date

  const Dates({Key? key, required this.onDateSelected}) : super(key: key);

  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  DateTime _selectedDate = DateTime.now(); // Default to today's date

  @override
  Widget build(BuildContext context) {
    final List<DateTime> daysInWeek = _getCurrentWeekDates();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Select the date" label
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: const Text(
            "Select the date",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
        ),

        // Date selection row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: daysInWeek.map((date) {
              final bool isSelected = _isSameDay(_selectedDate, date);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDate = date; // Update the selected date
                  });
                  widget.onDateSelected(date); // Notify parent of selection
                },
                child: _buildDateColumn(
                  "${_getDayOfWeek(date)}\n${date.day}",
                  selected: isSelected,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  // Helper method to build each date column with selection styling
  Widget _buildDateColumn(String dayAndDate, {bool selected = false}) {
    return Container(
      width: kDateColumnWidth,
      padding: const EdgeInsets.symmetric(vertical: kDatePadding),
      decoration: BoxDecoration(
        color: selected ? kSelectedDateColor : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        dayAndDate,
        textAlign: TextAlign.center,
        style: kDateTextStyle,
      ),
    );
  }

  // Get the current week dates
  List<DateTime> _getCurrentWeekDates() {
    final DateTime now = DateTime.now();
    final int weekday = now.weekday;
    return List.generate(7, (index) {
      return now.subtract(Duration(days: weekday - index - 1));
    });
  }

  // Check if two dates are the same day
  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  // Get the day of the week abbreviation
  String _getDayOfWeek(DateTime date) {
    const daysOfWeek = ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"];
    return daysOfWeek[date.weekday - 1];
  }
}
