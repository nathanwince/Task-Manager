import 'package:flutter/material.dart';

// Define constants for padding and sizes
const double kHorizontalPadding = 16.0;
const double kTopPadding = 15.0;
const double kLogoSize = 55.0;
const double kIconSize = 24.0;
const Color kHeaderBackgroundColor = Color(0xFF1D2550);
const Color kHeaderBorderColor = Color(0xFF303B75);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      decoration: const BoxDecoration(
        color: kHeaderBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: kHeaderBorderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo Image with top padding
          Padding(
            padding: const EdgeInsets.only(top: kTopPadding),
            child: Image.asset(
              "assets/images/logo_icon.png",
              width: kLogoSize,
              height: kLogoSize,
            ),
          ),
          // Settings Icon
          IconButton(
            icon: Image.asset(
              "assets/images/settings_icon.png",
              width: kIconSize,
              height: kIconSize,
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