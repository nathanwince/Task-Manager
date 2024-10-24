import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;

  BackArrowWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.pop(context), // Navigate back to the previous page
      child: Tooltip(
        message: 'Go back',
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent, // Keep it transparent for design, adjust if necessary
          ),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white, // Ensure the icon color is white for visibility
            size: 28.0,
          ),
        ),
      ),
    );
  }
}
