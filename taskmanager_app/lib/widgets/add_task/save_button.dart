import 'package:flutter/material.dart';
import '/services/api_services.dart'; // Import your API service

const double kButtonHeight = 77.0;
const double kHorizontalPadding = 16.0;
const Color kButtonBackgroundColor = Color(0xFF58CC02);
const Color kButtonBorderColor = Color(0xFF2B6C2B);
const TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 32,
  fontFamily: 'Baloo',
  fontWeight: FontWeight.w400,
);

class CreateTask extends StatelessWidget {
  final int userId; // User ID for whom the task is being saved
  final String title; // Task title
  final String description; // Task description
  final DateTime dueDate; // Task due date
  final int priority; // Task priority level
  final TimeOfDay toTime; // Required toTime parameter
  final VoidCallback onTaskAdded; // Callback to trigger after a successful save

  const CreateTask({
    Key? key,
    required this.userId,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.priority,
    required this.toTime, // Add the required toTime parameter
    required this.onTaskAdded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await _addTask(context);
      },
      child: Container(
        // Same UI code as before
      ),
    );
  }

  Future<void> _addTask(BuildContext context) async {
    final apiService = ApiService();

    // Prepare task data
    final newTask = {
      "title": title,
      "description": description,
      "due_date": dueDate.toIso8601String(),
      "priority": priority,
      "to_time": toTime.toString(), // Include toTime as part of the task data
      "user_id": userId,
    };

    try {
      // Call the API to save the task
      final response = await apiService.createTask(newTask);

      if (response['success'] == true) {
        onTaskAdded();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Task added successfully!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error adding task: ${response['message']}')),
        );
      }
    } catch (e) {
      print("Error adding task: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An error occurred while adding the task.')),
      );
    }
  }
}
