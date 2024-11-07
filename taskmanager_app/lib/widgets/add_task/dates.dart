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

class Dates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            children: [
              _buildDateColumn("Mo\n3"),
              _buildDateColumn("Tu\n4", selected: true),
              _buildDateColumn("We\n5"),
              _buildDateColumn("Th\n6"),
              _buildDateColumn("Fr\n7"),
              _buildDateColumn("Sa\n8"),
              _buildDateColumn("Su\n9"),
            ],
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
}