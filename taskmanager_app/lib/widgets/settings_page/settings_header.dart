import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center( // Center the content horizontally and vertically
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center vertically within the column
        children: [
          Text(
            'Settings',
            style: TextStyle(
              color: Color(0xFFFF5151),
              fontSize: 70,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
              height: 1.0, // Adjust line height for proper spacing
              letterSpacing: 0.30,
            ),
            textAlign: TextAlign.center, // Center the text itself
          ),
        ],
      ),
    );
  }
}