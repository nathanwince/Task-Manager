import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0), // Adjust vertical padding as needed
      decoration: BoxDecoration(
        color: Color(0xFF1D2550), // Background color matching your screenshot
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF303B75), // Line color
            width: 1.0, // Line thickness
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space out elements
        children: [
          // Adjust the logo padding to make it sit on the line
          Padding(
            padding: EdgeInsets.only(top: 15.0), 
            child: Image.asset(
              "assets/images/logo_icon.png", // Replace with your logo path
              width: 55, // Adjust width and height as needed
              height: 55,
            ),
          ),
          // Settings icon on the right
          IconButton(
            icon: Image.asset(
              "assets/images/settings_icon.png", // Replace with your settings icon path
              width: 24, // Adjust size as needed
              height: 24,
            ),
            onPressed: () {
              // Define what happens when the settings icon is clicked
            },
          ),
        ],
      ),
    );
  }
}