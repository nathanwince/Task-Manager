import 'package:flutter/material.dart';
import '/pages/weekly_summary.dart'; // Import Weekly Summary
import '/pages/notes.dart'; // Import Notes
import '/pages/bookmarks.dart'; // Import Bookmarks
import '/pages/bookmarks_copy.dart'; // Import BookmarksPage2

class MotivationHolder extends StatelessWidget {
  final int userId; // Accept the user ID dynamically

  const MotivationHolder({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // View Text wrapped in a Container for alignment
          Container(
            width: double.infinity, // Use full width for alignment
            child: const Text(
              "View",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
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
                _buildBookmarksSection(
                  context,
                  title: 'Bookmarks',
                  description: 'Save your favorite tips and important tasks',
                  imageUrl: 'assets/images/bookmark.png',
                  destination1: BookmarksPage(userId: userId), // Navigate to BookmarksPage1
                  destination2: BookmarksPage2(userId: userId,), // Navigate to BookmarksPage2
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required String description,
    required String imageUrl,
    required Widget destination,
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

  Widget _buildBookmarksSection(
    BuildContext context, {
    required String title,
    required String description,
    required String imageUrl,
    required Widget destination1, // Destination for bookmark icon
    required Widget destination2, // Destination for description text
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          // Image container for bookmark
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => destination1), // Navigate to BookmarksPage1
              );
            },
            child: Container(
              width: 107,
              height: 107,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl), // Use AssetImage for local assets
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16), // Space between image and text
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => destination2), // Navigate to BookmarksPage2
                );
              },
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
          ),
        ],
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
