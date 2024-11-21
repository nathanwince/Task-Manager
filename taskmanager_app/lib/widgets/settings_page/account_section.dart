import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Account Header
          Text(
            'Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16), // Space between header and container

          // Account Options Container
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFE2F2FF),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Color(0xFF6C7EA0), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Color(0x66E2F2FF),
                  blurRadius: 4,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Color(0x99E2F2FF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildOptionRow('Profile'),
                _buildDivider(),
                _buildOptionRow('Notifications'),
                _buildDivider(),
                _buildOptionRow('Privacy'),
                _buildDivider(),
                _buildOptionRow('Accessibility'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each option row
  Widget _buildOptionRow(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding for content
      child: SizedBox(
        height: 50, // Adjust height for consistent spacing
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between title and arrow
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF5E5B5B),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios, // Use a standard arrow icon
              color: Color(0xFF6C7EA0),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build dividers
  Widget _buildDivider() {
    return Divider(
      color: Color(0xFF6C7EA0),
      thickness: 1,
      height: 1, // Minimize space between rows
    );
  }
}