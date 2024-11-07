import 'package:flutter/material.dart';

class ViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0), // Add top padding if necessary
      child: Text(
        'View',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w800,
          letterSpacing: 0.30,
        ),
      ),
    );
  }
}