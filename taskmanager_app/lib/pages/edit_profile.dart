import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/edit_profile/header_content.dart'; 
import '../widgets/edit_profile/main_content.dart'; 
import '../widgets/edit_profile/editprofile_button.dart'; 

const Color kBackgroundColor = Color(0xFF03174C);

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor, // Match the app's theme background
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
          children: [
            // Back Arrow Button
            BackArrowWidget(),

            // Header Content (Edit Profile + Profile Picture)
            HeaderContent(),

            // Main Content (Name, Email, Phone Number, Password fields)
            MainContent(),

            const SizedBox(height: 40),

            // Edit Profile Button
            EditProfileButton(
              onPressed: () {
                // Action for saving changes
                Navigator.pop(context); // Go back after editing
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(), // Navbar at the bottom
    );
  }
}