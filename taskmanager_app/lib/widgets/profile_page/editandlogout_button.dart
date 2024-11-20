import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget {
  final VoidCallback onEditProfilePressed;
  final VoidCallback onLogoutPressed;

  ProfileActions({
    required this.onEditProfilePressed,
    required this.onLogoutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align buttons on opposite sides
        children: [
          // Edit Profile Button
          _buildButton(
            label: 'Edit Profile',
            color: Color(0xFF96600F), // Edit Profile button color
            textColor: Color(0xFFF3A556), // Edit Profile text color
            icon: Icons.edit,
            onPressed: onEditProfilePressed,
            shadowColors: [
              Color(0x66F3A556), // Light shadow for Edit Profile
              Color(0x99F3A556), // Slightly darker shadow for Edit Profile
            ],
          ),
          // Logout Button
          _buildButton(
            label: 'Logout',
            color: Color.fromARGB(255, 90, 28, 28), // Logout button color
            textColor: Color.fromARGB(255, 192, 63, 63), // Logout text color
            icon: Icons.logout,
            onPressed: onLogoutPressed,
            isCompact: true, // Smaller size for logout button
            shadowColors: [
              Color(0x66E32E2E), // Light shadow for Logout
              Color(0x99E32E2E), // Slightly darker shadow for Logout
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to build a button
  Widget _buildButton({
    required String label,
    required Color color,
    required Color textColor,
    required IconData icon,
    required VoidCallback onPressed,
    required List<Color> shadowColors, // Unique shadow colors for each button
    bool isCompact = false, // Optional for smaller button
  }) {
    return Container(
      width: isCompact ? 90 : 168, // Adjust width based on size
      height: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: shadowColors[0], // First shadow color
            blurRadius: 0,
            offset: Offset(4, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: shadowColors[1], // Second shadow color
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        onTap: onPressed, // Handle button press
        borderRadius: BorderRadius.circular(22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 14, // Adjusted for better visibility
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            const SizedBox(width: 6), // Space between text and icon
            Icon(
              icon,
              color: textColor,
              size: 16, // Adjust icon size
            ),
          ],
        ),
      ),
    );
  }
}