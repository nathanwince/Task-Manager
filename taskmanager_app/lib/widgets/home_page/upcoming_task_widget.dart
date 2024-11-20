import 'package:flutter/material.dart';
import '../../services/api_services.dart';
import '../../shared/task_container.dart';

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
    await ApiService().updateTaskStatus(taskId, true); // Update task status via API
    setState(() {
      _tasksFuture = ApiService().fetchDailyTasks(widget.userId); // Refresh tasks
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Upcoming Tasks",
          style: TextStyle(
            color: Color(0xFFCE82FF),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        FutureBuilder<List<Map<String, dynamic>>>(
          future: _tasksFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
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
              // Horizontal scrolling task list
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: tasks.map((task) {
                      final priority = task["priority"]?.toString() ?? "low";
                      final dueDate = task["due_date"]?.toString() ?? "No Date";
                      return GestureDetector(
                        onTap: () => _markTaskAsCompleted(task["id"]),
                        child: TaskContainer(
                          title: task["title"] ?? "No Title",
                          time: dueDate,
                          priority: priority,
                        ),
                      );
                    }).toList(),
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
}
