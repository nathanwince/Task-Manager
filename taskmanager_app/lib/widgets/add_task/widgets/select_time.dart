import 'package:flutter/material.dart';

const double kSelectTimeContainerHeight = 88.0;
const double kHorizontalPadding = 16.0;
const double kVerticalSpacing = 4.0;
const Color kSelectTimeBackgroundColor = Color(0xFFF1F5F9);
const Color kSelectTimeBorderColor = Color(0xFF6C7EA0);
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

const TextStyle kAmPmTextStyle = TextStyle(
  color: kTimeTextColor,
  fontSize: 16,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w800,
);

class SelectTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Select time" label
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 8.0),
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
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Container(
            width: double.infinity,
            height: kSelectTimeContainerHeight,
            decoration: ShapeDecoration(
              color: kSelectTimeBackgroundColor,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: kSelectTimeBorderColor),
                borderRadius: BorderRadius.circular(30),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x66F1F5F9),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x99F1F5F9),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // "From" time
                _buildTimeColumn("From", "12:00", "am"),
                
                // Divider arrow
                const Text('>', style: kTimeTextStyle),

                // "To" time
                _buildTimeColumn("To", "11:59", "pm"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Helper to build time column with label, time, and am/pm
  Widget _buildTimeColumn(String label, String time, String period) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: kLabelTextStyle),
        const SizedBox(height: kVerticalSpacing),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(time, style: kTimeTextStyle),
            const SizedBox(width: kVerticalSpacing),
            Text(period, style: kAmPmTextStyle),
          ],
        ),
      ],
    );
  }
}