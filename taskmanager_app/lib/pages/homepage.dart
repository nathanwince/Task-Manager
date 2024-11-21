import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/home_page/header.dart';
import '../widgets/home_page/date_display.dart';
import '../widgets/home_page/streak_bar_widget.dart';
import '../widgets/home_page/upcoming_task_widget.dart';
import '../widgets/home_page/check_out_grid_widget.dart';
import 'addtask.dart';

class HomePage extends StatefulWidget {
  final int userId;

  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Explicit flag to trigger refresh
  bool _refreshTasks = false;

void _navigateToAddTaskPage() async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => AddTaskPage(userId: widget.userId),
    ),
  );

  // Toggle the refresh flag if a task was added
  if (result == true) {
    setState(() {
      _refreshTasks = !_refreshTasks;
      print('Toggled refresh flag: $_refreshTasks'); // Debug log
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/vector.png",
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    const SizedBox(height: 16.0),
                    DateDisplay(),
                    const SizedBox(height: 16.0),
                    StreakBarWidget(userId: widget.userId),
                    const SizedBox(height: 24.0),
                    UpcomingTasksWidget(
                      userId: widget.userId,
                      refresh: _refreshTasks, // Pass refresh flag
                    ),
                    const SizedBox(height: 24.0),
                    CheckOutGridWidget(userId: widget.userId),
                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddTaskPage,
        backgroundColor: const Color(0xFF58CC02),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: Navbar(userId: widget.userId),
    );
  }
}
