import 'package:flutter/material.dart';
import '../widgets/add_task/header.dart';
import '../widgets/add_task/select_time.dart';
import '../widgets/add_task/category.dart'; // Renamed category to priority
import '../widgets/add_task/note.dart';
import '../widgets/add_task/save_button.dart'; // Updated SaveButton to CreateTask
import '../shared/navbar.dart';

const double kSectionSpacing = 16.0;
const double kLargeSpacing = 30.0;
const Color kBackgroundColor = Color(0xFF03174C);

class AddTaskPage extends StatefulWidget {
  final int userId; // Accept userId as a parameter

  const AddTaskPage({Key? key, required this.userId}) : super(key: key);

  @override
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  DateTime _selectedDate = DateTime.now(); // Default to current date
  TimeOfDay _fromTime = TimeOfDay.now(); // Default to now
  TimeOfDay _toTime = TimeOfDay.now(); // Default to now
  String? _priority = "2"; // Default to medium priority
  String _title = ''; // Task title
  String _description = ''; // Task description

  // Handle save callback
  void _onSave() {
    Navigator.pop(context); // Navigate back or perform any action after saving
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView( // Enable vertical scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pass `onDateSelected` to Header
            Header(
              onDateSelected: (selectedDate) {
                setState(() {
                  _selectedDate = selectedDate;
                });
              },
            ),
            SizedBox(height: kSectionSpacing),

            // Time selection section
            _buildSection(
              SelectTime(
                onTimeSelected: (from, to) {
                  setState(() {
                    _fromTime = from ?? _fromTime; // Ensure valid time
                    _toTime = to ?? _toTime;
                  });
                },
              ),
            ),

            // Priority selection section
            _buildSection(
              Priority(
                onPrioritySelected: (selectedPriority) {
                  setState(() {
                    _priority = selectedPriority.toString(); // Convert int to String
                  });
                },
              ),
            ),

            // Title and description (Note section)
            _buildSection(
              Note(
                onTitleChanged: (value) {
                  setState(() {
                    _title = value;
                  });
                },
                onDescriptionChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
              ),
            ),

            SizedBox(height: kLargeSpacing), // Extra space before SaveButton

            // Save Button
            _buildSection(
              CreateTask(
                userId: widget.userId, // Pass userId here
                title: _title.isNotEmpty ? _title : "Untitled Task", // Default title if empty
                description: _description.isNotEmpty ? _description : "No description",
                dueDate: DateTime(
                  _selectedDate.year,
                  _selectedDate.month,
                  _selectedDate.day,
                  _toTime.hour,
                  _toTime.minute,
                ),
                priority: int.tryParse(_priority ?? "2") ?? 2, // Default to medium priority
                onTaskAdded: () {
                  // Callback after successful addition
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Task added successfully!')),
                  );
                },
              ),
            ),

            SizedBox(height: kLargeSpacing), // Space before Navbar
          ],
        ),
      ),
      bottomNavigationBar: Navbar(userId: widget.userId), // Pass userId to Navbar
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
