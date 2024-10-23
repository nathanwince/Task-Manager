import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0), // Adjust padding for top and bottom
      decoration: BoxDecoration(
        color: Color(0xFF1D2550), // Background color matching your screenshot
        border: Border(
          top: BorderSide(
            color: Color(0xFF303B75), // Line color
            width: 1.0, // Line thickness
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Evenly space icons
        children: [
          // Home Icon
          IconButton(
            icon: Image.asset(
              "assets/images/home_icon.png", // Replace with your home icon path
              width: 35,
              height: 35,
            ),
            onPressed: () {
              // Define action when Home is pressed
            },
          ),
          // Calendar Icon
          IconButton(
            icon: Image.asset(
              "assets/images/calendar_icon.png", // Replace with your calendar icon path
              width: 35,
              height: 35,
            ),
            onPressed: () {
              // Define action when Calendar is pressed
            },
          ),
          // Add Icon
          IconButton(
            icon: Image.asset(
              "assets/images/add_icon.png", // Replace with your add icon path
              width: 40,
              height: 40,
            ),
            onPressed: () {
              // Define action when Add is pressed
            },
          ),
          // Stats Icon
          IconButton(
            icon: Image.asset(
              "assets/images/stats_icon.png", // Replace with your stats icon path
              width: 30,
              height: 30,
            ),
            onPressed: () {
              // Define action when Stats is pressed
            },
          ),
          // Profile Icon
          IconButton(
            icon: Image.asset(
              "assets/images/profile_icon.png", // Replace with your profile icon path
              width: 30,
              height: 30,
            ),
            onPressed: () {
              // Define action when Profile is pressed
            },
          ),
        ],
      ),
    );
  }
}