import 'package:flutter/material.dart';

// Define constants for padding and sizes
const double kHeaderHeight = 80.0; // Header height
const double kLogoWidth = 80.0; // Logo width
const double kLogoHeight = 50.0; // Logo height
const double kIconSize = 24.0; // Settings icon size
const Color kHeaderBackgroundColor = Color(0xFF1D2550);
const Color kHeaderBorderColor = Color(0xFF303B75);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kHeaderHeight,
      decoration: const BoxDecoration(
        color: kHeaderBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: kHeaderBorderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Logo Positioned on the Left
          Positioned(
            left: 16.0, // Adjust this value for horizontal movement
            top: 35.0, // Adjust this value for vertical movement
            child: Image.asset(
              "assets/images/logo_icon.png",
              width: kLogoWidth,
              height: kLogoHeight,
              fit: BoxFit.contain,
            ),
          ),
          // Settings Icon Positioned on the Right
          Positioned(
            right: 16.0,
            child: IconButton(
              icon: Image.asset(
                "assets/images/settings_icon.png",
                width: kIconSize,
                height: kIconSize,
              ),
              onPressed: () {
                // Define what happens when the settings icon is clicked
              },
            ),
          ),
        ],
      ),
    );
  }
}
