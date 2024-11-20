import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final String label; // Button text
  final VoidCallback onTap; // Action to perform when button is pressed
  final bool isSelected; // Highlight the button if selected

  const CalendarButton({
    required this.label,
    required this.onTap,
    this.isSelected = false, // Default to not selected
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF94D762) : const Color(0xFF1F265E), // Green if selected, blue otherwise
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: isSelected ? const Color(0x6694D762) : const Color(0x661F265E),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.white, // Black text for selected, white otherwise
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
