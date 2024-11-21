import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/profile_page/header_content.dart';
import '../widgets/profile_page/main_content.dart';
import '../widgets/profile_page/editandlogout_button.dart';

const Color kBackgroundColor = Color(0xFF03174C);

class ProfilePage extends StatelessWidget {
  final int userId; // Accept the user ID dynamically

  const ProfilePage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Hardcoded data
    final String name = "Matthew Mckenry";
    final String accountCreated = "Joined 1/20/23";
    final int tasksCompleted = 22;
    final int longestStreak = 78;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrowWidget(),

            const SizedBox(height: 20),

            // Header Content (Hardcoded name)
            HeaderContent(
              name: name,
            ),

            const SizedBox(height: 20),

            // Main Content (Hardcoded stats)
            MainContent(
              accountCreated: accountCreated,
              tasksCompleted: tasksCompleted,
              longestStreak: longestStreak,
            ),

            const SizedBox(height: 26),

            // Profile Actions (Edit Profile & Logout Buttons)
            ProfileActions(
              onEditProfilePressed: () {
                Navigator.pushNamed(context, '/editprofile'); // Navigate to Edit Profile Page
              },
              onLogoutPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigate to Login Page
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(userId: userId), // Pass userId to Navbar
    );
  }
}
