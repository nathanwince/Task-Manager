import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/settings_page/settings_header.dart';
import '../widgets/settings_page/account_section.dart';
import '../widgets/settings_page/support_section.dart';
import '../widgets/settings_page/logout_button.dart';

const Color kBackgroundColor = Color(0xFF03174C);

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor, // Match the app's theme background
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
          children: [
            // Back Arrow Button
            Align(
              alignment: Alignment.centerLeft,
              child: BackArrowWidget(), // Custom widget for back navigation
            ),

            const SizedBox(height: 20),

            // Settings Header
            SettingsHeader(), // Widget for "Settings" header

            const SizedBox(height: 40), // Space between header and sections

            // Account Section
            AccountSection(), // Widget for Account section

            const SizedBox(height: 20), // Space between sections

            // Support Section
            SupportSection(), // Widget for Support section

            const SizedBox(height: 60), // Space between sections and logout button

            // Logout Button
            LogoutButton(
              onPressed: () {
                // Navigate back to the login page
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(), // Navbar at the bottom
    );
  }
}