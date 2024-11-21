import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import intl package
import '../../services/api_services.dart';

class UpcomingTasksWidget extends StatefulWidget {
  final int userId;

  const UpcomingTasksWidget({Key? key, required this.userId}) : super(key: key);

  @override
  State<UpcomingTasksWidget> createState() => _UpcomingTasksWidgetState();
}

class _UpcomingTasksWidgetState extends State<UpcomingTasksWidget> {
  late Future<List<Map<String, dynamic>>> _tasksFuture;

  @override
  void initState() {
    super.initState();
    _tasksFuture = ApiService().fetchDailyTasks(widget.userId);
  }

  void _markTaskAsCompleted(int taskId) async {
    await ApiService().updateTaskStatus(taskId, true);
    setState(() {
      _tasksFuture = ApiService().fetchDailyTasks(widget.userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Upcoming Tasks",
            style: TextStyle(
              color: Color(0xFFCE82FF),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        FutureBuilder<List<Map<String, dynamic>>>(
          future: _tasksFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(
                child: Text(
                  "Error loading tasks",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              );
            } else if (snapshot.hasData) {
              final tasks = snapshot.data!;
              if (tasks.isEmpty) {
                return const Center(
                  child: Text(
                    "All done for today! 😊",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 120.0, // Fixed height for task cards
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      final task = tasks[index];
                      final priority = task["priority"]?.toString() ?? "Low";
                      final rawDate = task["due_date"]?.toString();
                      final formattedTime = _formatTime(rawDate); // Format time
                      return _buildTaskCard(
                        title: task["title"] ?? "No Title",
                        time: formattedTime,
                        priority: priority,
                        color: _getPriorityColor(priority),
                        onTap: () => _markTaskAsCompleted(task["id"]),
                      );
                    },
                  ),
                ),
              );
            } else {
              return const Center(child: Text("No tasks available"));
            }
          },
        ),
      ],
    );
  }

  Widget _buildTaskCard({
    required String title,
    required String time,
    required String priority,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        width: 190,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title and Priority Level Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      priority,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              // Time Row
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.white),
                  const SizedBox(width: 4),
                  Text(
                    time,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(String? rawDate) {
    if (rawDate == null || rawDate.isEmpty) return "No Time";

    try {
      final parsedDate = DateTime.parse(rawDate);
      final formattedTime = DateFormat.jm().format(parsedDate); // Format to 12-hour time
      return formattedTime;
    } catch (e) {
      return "Invalid Date";
    }
  }

  Color _getPriorityColor(String priority) {
    switch (priority.toLowerCase()) {
      case 'high':
        return const Color(0xFFEB5757); // Red
      case 'medium':
        return const Color(0xFFF2C94C); // Yellow
      default:
        return const Color(0xFF27AE60); // Green
    }
  }
}