import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sign Up',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 36, // Adjusted font size
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}