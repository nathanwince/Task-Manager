import 'package:flutter/material.dart';

const double kNavbarVerticalPadding = 8.0;
const double kIconSizeLarge = 40.0;
const double kIconSizeMedium = 35.0;
const double kIconSizeSmall = 30.0;
const Color kNavbarBackgroundColor = Color(0xFF1D2550);
const Color kNavbarBorderColor = Color(0xFF303B75);

class Navbar extends StatelessWidget {
  final int userId; // Accept the userId dynamically

  const Navbar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kNavbarVerticalPadding),
      decoration: const BoxDecoration(
        color: kNavbarBackgroundColor,
        border: Border(
          top: BorderSide(
            color: kNavbarBorderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconButton(context, "assets/images/home_icon.png", kIconSizeMedium, '/home', userId),
          _buildIconButton(context, "assets/images/calendar_icon.png", kIconSizeMedium, '/calendar', userId),
          _buildIconButton(context, "assets/images/add_icon.png", kIconSizeLarge, '/addtask', userId),
          _buildIconButton(context, "assets/images/stats_icon.png", kIconSizeSmall, null, null),
          _buildIconButton(context, "assets/images/profile_icon.png", kIconSizeSmall, '/profile', userId),
        ],
      ),
    );
  }

  // Helper function to build an IconButton with the specified path, size, and navigation route
  Widget _buildIconButton(BuildContext context, String assetPath, double iconSize, String? route, int? userId) {
    return IconButton(
      icon: Image.asset(
        assetPath,
        width: iconSize,
        height: iconSize,
      ),
      onPressed: route != null
          ? () {
              if (userId != null) {
                // Navigate to routes with userId
                Navigator.pushNamed(context, route, arguments: userId);
              } else {
                // Navigate to routes without userId
                Navigator.pushNamed(context, route);
              }
            }
          : null, // Keep as null if no route is provided
    );
  }
}
