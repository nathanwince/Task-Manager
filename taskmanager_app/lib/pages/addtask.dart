import 'package:flutter/material.dart';
import '../widgets/add_task/header.dart';
import '../widgets/add_task/select_time.dart';
import '../widgets/add_task/category.dart';
import '../widgets/add_task/note.dart';
import '../widgets/add_task/save_button.dart';
import '../shared/navbar.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(height: kSectionSpacing),

            // Page Content with consistent spacing between sections
            _buildSection(SelectTime()),
            _buildSection(Category()),
            _buildSection(Note()),

            SizedBox(height: kLargeSpacing), // Extra space before SaveButton

            // Save Button
            _buildSection(SaveButton()),

            SizedBox(height: kLargeSpacing), // Space before Navbar
          ],
        ),
      ),
      bottomNavigationBar: Navbar(), // Use bottomNavigationBar instead of a widget in the column
    );
  }

  // Helper function to add consistent padding and spacing to sections
  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          child,
          SizedBox(height: kSectionSpacing), // Spacing between each section
        ],
      ),
    );
  }
}