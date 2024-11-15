import 'package:flutter/material.dart';

class SettingsOptionWidget extends StatelessWidget {
  final String label;
  final bool topDivider;

  SettingsOptionWidget({required this.label, this.topDivider = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (topDivider)
          Container(
            width: 394,
            height: 1.13,
            decoration: BoxDecoration(color: Color(0xFF6C7EA0)),
          ),
        SizedBox(
          width: 134,
          height: 24,
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xFF5E5B5B),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0.07,
              letterSpacing: 0.30,
            ),
          ),
        ),
      ],
    );
  }
}