import 'package:flutter/material.dart';
import '../services/api_services.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/calendar/currentday_task.dart'; // Import the CurrentDayTask widget

class TodaysTaskPage extends StatefulWidget {
  final int userId; // Pass the logged-in user's ID

  const TodaysTaskPage({Key? key, required this.userId}) : super(key: key);

  @override
  _TodaysTaskPageState createState() => _TodaysTaskPageState();
}

class _TodaysTaskPageState extends State<TodaysTaskPage> {
  final ApiService _apiService = ApiService(); // API Service instance
  List<Map<String, dynamic>> _todaysTasks = []; // Tasks for today
  bool _isLoading = true; // Loading state

  @override
  void initState() {
    super.initState();
    _fetchTodaysTasks(); // Fetch today's tasks on initialization
  }

  // Fetch tasks for today's date
  Future<void> _fetchTodaysTasks() async {
    final today = DateTime.now();
    final formattedDate =
        "${today.year}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}";

    try {
      final tasks = await _apiService.fetchTasksForDate(formattedDate, widget.userId);
      setState(() {
        _todaysTasks = tasks;
        _isLoading = false;
      });
    } catch (e) {
      print("Error fetching today's tasks: $e");
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackArrowWidget(), // Back arrow at the top
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Page title
                const Text(
                  "Today's Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
                const SizedBox(height: 8.0),
                // Date and task count
                Text(
                  _formatDate(DateTime.now()),
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  "${_todaysTasks.length} Tasks Today",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          // Main content area
          Expanded(
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.orange),
                  )
                : CurrentDayTask(
                    tasks: _todaysTasks, // Pass tasks to CurrentDayTask widget
                  ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(userId: widget.userId), // Pass userId to Navbar
    );
  }

  // Helper to format date
  String _formatDate(DateTime date) {
    const months = [
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December"
    ];
    return "${date.day} ${months[date.month - 1]} ${date.year}";
  }
}
