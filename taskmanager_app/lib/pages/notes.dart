import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/allnotes_page/allnotes_title.dart'; 
import '../widgets/allnotes_page/pinned_message.dart'; 
import '../widgets/allnotes_page/last_30days.dart'; 
import '../widgets/allnotes_page/this_month.dart'; 

class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Match background color with theme
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: [
            // Back Arrow Button
            BackArrowWidget(), // Custom widget for back navigation

            // All Notes Title
            Center(
              child: AllNotesTitle(), // Title widget for all notes
            ),
            SizedBox(height: 30.0), // Space below the title

            // Pinned Message Section
            Center(
              child: PinnedNoteBar(), // Pinned message widget
            ),

            // Last 30 Days Section
            Center(
              child: RecentNotesContainer(), // Last 30 days notes widget
            ),

            // This Month Section
            Center(
              child: MonthNoteBar(), // This month notes widget
            ),

            // Optionally add more space before the Navbar
            SizedBox(height: 20), // Add spacing as needed
          ],
        ),
      ),
    );
  }
}