import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/calendar/calendar_widget.dart';
import '../widgets/calendar/currentday_task.dart';
import '../services/api_services.dart';

class CalendarPage extends StatefulWidget {
  final int userId; // Accept userId as a parameter

  const CalendarPage({Key? key, required this.userId}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final ApiService _apiService = ApiService();
  DateTime _selectedDate = DateTime.now();
  List<Map<String, dynamic>> _tasksForSelectedDate = [];

  // Fetch tasks for the selected date
  Future<void> _fetchTasksForDate(DateTime date) async {
    final formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";

    try {
      final tasks = await _apiService.fetchTasksForDate(formattedDate, widget.userId); // Use widget.userId
      setState(() {
        _tasksForSelectedDate = tasks;
      });
    } catch (e) {
      print("Error fetching tasks for date: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchTasksForDate(_selectedDate); // Fetch tasks for the current date on load
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackArrowWidget(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                "Calendar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
          // Display current month above the calendar
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                _getMonthName(_selectedDate.month),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CalendarWidget(
              onDateSelected: (selectedDate) {
                setState(() {
                  _selectedDate = selectedDate;
                });
                _fetchTasksForDate(selectedDate); // Fetch tasks for the new selected date
              },
              selectedDate: _selectedDate,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0, top: 24.0),
            child: Text(
              "Tasks for ${_formatDate(_selectedDate)}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CurrentDayTask(tasks: _tasksForSelectedDate),
            ),
          ),
          Navbar(userId: widget.userId), // Pass userId to Navbar
        ],
      ),
    );
  }

  // Format date for display
  String _formatDate(DateTime date) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    final monthName = months[date.month - 1];
    return "$monthName ${date.day}, ${date.year}";
  }

  // Get the name of the month
  String _getMonthName(int month) {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    return months[month - 1];
  }
}
