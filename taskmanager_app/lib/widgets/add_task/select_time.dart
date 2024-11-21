import 'package:flutter/material.dart';

class SelectTime extends StatefulWidget {
  final Function(TimeOfDay from, TimeOfDay to)? onTimeSelected; // Callback to pass selected times

  const SelectTime({Key? key, this.onTimeSelected}) : super(key: key);

  @override
  _SelectTimeState createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  TimeOfDay? _fromTime;
  TimeOfDay? _toTime;

  Future<void> _selectTime(BuildContext context, bool isFromTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isFromTime ? (_fromTime ?? TimeOfDay.now()) : (_toTime ?? TimeOfDay.now()),
    );
    if (picked != null) {
      setState(() {
        if (isFromTime) {
          _fromTime = picked;
        } else {
          _toTime = picked;
        }
      });

      // Pass the selected times back to the parent widget
      if (widget.onTimeSelected != null) {
        widget.onTimeSelected!(_fromTime ?? TimeOfDay.now(), _toTime ?? TimeOfDay.now());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Select time" label
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: const Text(
            "Select time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
        ),

        // Time selection container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: 88.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F5F9),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: const Color(0xFF6C7EA0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // "From" time
                GestureDetector(
                  onTap: () => _selectTime(context, true),
                  child: _buildTimeColumn("From", _fromTime),
                ),

                // Divider arrow
                const Text('>', style: TextStyle(color: Color(0xFF1E293B), fontSize: 24, fontWeight: FontWeight.bold)),

                // "To" time
                GestureDetector(
                  onTap: () => _selectTime(context, false),
                  child: _buildTimeColumn("To", _toTime),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Helper to build time column with label and time
  Widget _buildTimeColumn(String label, TimeOfDay? time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: const TextStyle(color: Color(0xFF94A3B8), fontSize: 12, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4.0),
        Text(
          time != null ? time.format(context) : '--:--',
          style: const TextStyle(color: Color(0xFF1E293B), fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
