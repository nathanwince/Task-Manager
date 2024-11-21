import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LogoutButton({required this.onPressed}); // Accept callback for button press

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: GestureDetector(
        onTap: onPressed, // Trigger the callback on button tap
        child: Container(
          width: double.infinity, // Button spans the full available width
          height: 63, // Fixed height for the button
          decoration: BoxDecoration(
            color: Color.fromARGB(102, 83, 21, 21), // Button background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(102, 197, 74, 74), // Slight shadow for depth
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color.fromARGB(153, 201, 81, 81), // Slight shadow for depth
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Logout',
              style: TextStyle(
                color: Color.fromARGB(255, 230, 79, 79), // Text color
                fontSize: 20,
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