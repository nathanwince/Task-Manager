import 'package:flutter/material.dart';

const double kHorizontalPadding = 16.0;
const double kVerticalSpacing = 4.0;
const Color kBackgroundColor = Color(0xFFF1F5F9);
const Color kBorderColor = Color(0xFF6C7EA0);
const Color kTimeTextColor = Color(0xFF1E293B);
const Color kLabelTextColor = Color(0xFF94A3B8);

const TextStyle kLabelTextStyle = TextStyle(
  color: kLabelTextColor,
  fontSize: 12,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w900,
);

const TextStyle kTimeTextStyle = TextStyle(
  color: kTimeTextColor,
  fontSize: 24,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w800,
);

class SelectTime extends StatefulWidget {
  final Function(TimeOfDay) onTimeSelected; // Callback for selected time

  const SelectTime({Key? key, required this.onTimeSelected}) : super(key: key);

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  TimeOfDay? _selectedTime; // Stores the selected time

  Future<void> _pickTime(BuildContext context) async {
    // Show time picker
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        _selectedTime = pickedTime;
      });

      // Notify parent about the selected time
      widget.onTimeSelected(pickedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pickTime(context), // Open time picker
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        padding: const EdgeInsets.all(kHorizontalPadding),
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: kBorderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Allow flexible height
          children: [
            // Label
            const Text("Select Time", style: kLabelTextStyle),
            const SizedBox(height: kVerticalSpacing),

            // Time Display
            Center(
              child: Text(
                _selectedTime == null
                    ? "Tap to select"
                    : _selectedTime!.format(context), // Format AM/PM
                style: kTimeTextStyle,
                maxLines: 1, // Prevent overflow by limiting to one line
                overflow: TextOverflow.ellipsis, // Handle overflow gracefully
              ),
            ),
          ],
        ),
      ),
    );
  }
}
