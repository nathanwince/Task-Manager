import 'package:flutter/material.dart';
import '../widgets/add_task/widgets/header.dart';
import '../widgets/add_task/widgets/select_time.dart';
import '../widgets/add_task/widgets/category.dart';
import '../widgets/add_task/widgets/note.dart';
import '../widgets/add_task/widgets/save_button.dart';
import '../shared/navbar.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
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

          Expanded(child: SizedBox()), // Spacer to push Navbar to bottom
          Navbar(),
        ],
      ),
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