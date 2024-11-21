import 'package:flutter/material.dart';
import 'motivation_viewtext.dart'; // Make sure this widget is correctly implemented
import '/pages/weekly_summary.dart'; // Import the Weekly Summary page
import '/pages/notes.dart'; // Import the Notes page
import '/pages/bookmarks.dart'; // Import the Bookmarks page

class MotivationHolder extends StatelessWidget {
   final int userId; // Accept the user ID dynamically

  const MotivationHolder({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0), // Top and horizontal alignment
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items to the left
        children: [
          // View Text wrapped in a Container for alignment
          Container(
            width: double.infinity, // Use full width for alignment
            child: ViewWidget(), // Use the View widget
          ),
          const SizedBox(height: 16), // Space between "View" text and the container

          // Container for Motivation Content
          Container(
            width: double.infinity, // Use full width for responsiveness
            decoration: BoxDecoration(
              color: Color(0xFFE2F2FF),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: Color(0xFF6C7EA0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0x66E2F2FF),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x99E2F2FF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                // Weekly Summary section
                _buildSection(
                  context,
                  title: 'Weekly Summary',
                  description: 'View how you did for the week',
                  imageUrl: 'assets/images/notepad.png',
                  destination: WeeklySummaryPage(), // Navigate to Weekly Summary
                ),
                _buildDivider(),
                // Notes section
                _buildSection(
                  context,
                  title: 'Notes',
                  description: 'Create or view notes',
                  imageUrl: 'assets/images/createnote.png',
                  destination: NotesPage(), // Navigate to Notes
                ),
                _buildDivider(),
                // Bookmarks section
                _buildSection(
                  context,
                  title: 'Bookmarks',
                  description: 'Save your favorite tips and important tasks',
                  imageUrl: 'assets/images/bookmark.png',
                  destination: BookmarksPage(userId: userId), // Pass the userId to BookmarksPage
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, {
    required String title, 
    required String description, 
    required String imageUrl, 
    required Widget destination, // Add destination parameter
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination), // Navigate to the destination page
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: [
            // Image container
            Container(
              width: 107,
              height: 107,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl), // Use AssetImage for local assets
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 16), // Space between image and text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xFF1CB0F6),
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.30,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Color(0xFF9D9D9D),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity, // Use full width for the divider
      height: 1.71,
      color: Color(0xFF94BDD9),
    );
  }
}