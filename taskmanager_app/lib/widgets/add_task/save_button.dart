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
  final TimeOfDay toTime; // Task end time
  final int priority; // Task priority level (e.g., 1: High, 2: Medium, 3: Low)
  final VoidCallback onTaskAdded; // Callback to trigger after a successful save

  const CreateTask({
    Key? key,
    required this.userId,
    required this.title,
    required this.description,
    required this.dueDate,
    required this.toTime,
    required this.priority,
    required this.onTaskAdded,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Handle the add task action
        await _addTask(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Container(
          width: double.infinity,
          height: kButtonHeight,
          decoration: ShapeDecoration(
            color: kButtonBackgroundColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: kButtonBorderColor),
              borderRadius: BorderRadius.circular(30),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x6658CC02),
                blurRadius: 0,
                offset: Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x9958CC02),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Add Task',
              style: kButtonTextStyle,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _addTask(BuildContext context) async {
    final apiService = ApiService();

    // Prepare task data
    final newTask = {
      "title": title.isNotEmpty ? title : "Untitled Task",
      "description": description.isNotEmpty ? description : "No description",
      "due_date": DateTime(
        dueDate.year,
        dueDate.month,
        dueDate.day,
        toTime.hour, // Use the provided `toTime` for the hour
        toTime.minute, // Use the provided `toTime` for the minutes
      ).toIso8601String(),
      "priority": priority,
      "user_id": userId,
    };

    try {
      // Send the task data to the API
      final response = await apiService.createTask(newTask);

      if (response['success'] == true) {
        // Trigger the onTaskAdded callback if provided
        onTaskAdded();

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Task added successfully!')),
        );
      } else {
        // Show error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error adding task: ${response['message']}')),
        );
      }
    } catch (e) {
      // Handle API error
      print("Error adding task: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An error occurred while adding the task.')),
      );
    }
  }
}
