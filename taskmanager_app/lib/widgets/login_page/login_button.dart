import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed; // Callback for button tap

  const LoginButton({required this.onPressed}); // Constructor to accept the callback

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: GestureDetector(
        onTap: onPressed, // Trigger the callback on button press
        child: Container(
          width: double.infinity, // Responsive button width
          height: 56, // Fixed height for the button
          decoration: BoxDecoration(
            color: Color(0xFFFF9A00), // Button background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: Color(0xFF564645), // Border color
              width: 1, // Border width
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x66FF9A00),
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x99FF9A00),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: Color(0xFFE2F2FF), // Text color
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}