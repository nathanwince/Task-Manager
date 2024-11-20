import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For date and time formatting

class CurrentDayTask extends StatelessWidget {
  final List<Map<String, dynamic>> tasks; // Accept List<Map<String, dynamic>> to represent tasks

  const CurrentDayTask({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Handle case when there are no tasks for the day
    if (tasks.isEmpty) {
      return const Center(
        child: Text(
          "No tasks for this day!", // Message displayed when there are no tasks
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      );
    }

    // Build a ListView to display the tasks
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index]; // Get the current task

        // SECTION: Handle priority parsing and color determination
        int priority;
        try {
          priority = int.tryParse(task["priority"].toString()) ?? 0; // Default to 0 if parsing fails
        } catch (e) {
          priority = 0; // Fallback value if error occurs
        }

        // Determine card color based on task priority
        Color priorityColor;
        switch (priority) {
          case 1:
            priorityColor = Colors.red; // High priority
            break;
          case 2:
            priorityColor = Color(0xFF42B0FF);  // Medium priority
            break;
          case 3:
            priorityColor = Colors.orange;  // Low priority
            break;
          default:
            priorityColor = Colors.grey; // Unknown priority
        }

        // SECTION: Format date and time
        String time = "No time";
        String date = "No date";
        try {
          // Parse the datetime string into a DateTime object
          DateTime dateTime = DateTime.parse(task["time"] ?? DateTime.now().toString());
          time = DateFormat('hh:mm a').format(dateTime); // Format time as 'HH:mm AM/PM'
          date = DateFormat('dd MMMM yyyy').format(dateTime); // Format date as 'DD MMMM YYYY'
        } catch (e) {
          // Keep default values if parsing fails
        }

        return Card(
          color: priorityColor, // Apply color based on priority
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0), // Rounded corners for the card
          ),
          margin: const EdgeInsets.symmetric(vertical: 8.0), // Add vertical spacing between cards
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Padding inside the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SECTION: Task Title
                Text(
                  task["title"] ?? "Untitled Task", // Handle missing or null task titles
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8), // Add spacing after the title

                // SECTION: Task Description
                Text(
                  task["description"] ?? "No description", // Handle missing or null descriptions
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8), // Add spacing after the description

                // SECTION: Date and Time Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Display the time of the task
                    Row(
                      children: [
                        const Icon(Icons.access_time, color: Colors.white, size: 16), // Time icon
                        const SizedBox(width: 4), // Spacing between icon and text
                        Text(
                          time, // Display formatted time
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    // Display the due date of the task
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, color: Colors.white, size: 16), // Calendar icon
                        const SizedBox(width: 4), // Spacing between icon and text
                        Text(
                          date, // Display formatted date
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
