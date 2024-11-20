import 'package:flutter/material.dart';
import '../../services/api_services.dart';
import 'streak_bar.dart';

class StreakBarWidget extends StatelessWidget {
  final int userId;

  const StreakBarWidget({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: ApiService().fetchUserProgress(userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text(
              "Error loading streak data",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          );
        } else if (snapshot.hasData) {
          final data = snapshot.data!;
          return StreakBar(
            tasksRemaining: data['remaining_tasks'],
            totalTasks: data['daily_tasks'],
            streakCount: data['streak_count'],
          );
        } else {
          return const Center(child: Text("No streak data available"));
        }
      },
    );
  }
}
