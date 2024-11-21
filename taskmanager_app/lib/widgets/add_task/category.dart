import 'package:flutter/material.dart';

const double kPriorityItemSpacing = 8.0;
const double kLeftPadding = 16.0;
const TextStyle kPriorityTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'Nunito',
);

class Priority extends StatefulWidget {
  final Function(int) onPrioritySelected; // Callback to send the selected priority

  const Priority({Key? key, required this.onPrioritySelected}) : super(key: key);

  @override
  _PriorityState createState() => _PriorityState();
}

class _PriorityState extends State<Priority> {
  int _selectedPriority = 2; // Default to Medium (2)

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Priority title label
        Padding(
          padding: const EdgeInsets.only(left: kLeftPadding, bottom: kPriorityItemSpacing),
          child: const Text("Priority", style: kPriorityTitleStyle),
        ),

        // Row for priority options with spacing
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kLeftPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPriorityItem("Low", const Color(0xFFF7C14A), 1),
              _buildPriorityItem("Medium", const Color(0xFF5AA8F6), 2),
              _buildPriorityItem("High", const Color(0xFFF36A6A), 3),
            ],
          ),
        ),
      ],
    );
  }

  // Helper method to build each priority item
  Widget _buildPriorityItem(String label, Color color, int priority) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPriority = priority; // Update the selected priority
        });
        widget.onPrioritySelected(priority); // Send the selected priority to parent
      },
      child: Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          color: _selectedPriority == priority ? color : color.withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
        ),
      ),
    );
  }
}
