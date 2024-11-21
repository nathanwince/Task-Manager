import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../widgets/calendar/calendar_widget.dart';
import '../widgets/calendar/currentday_task.dart';
import '../shared/navbar.dart';
import '../services/api_services.dart';

class CalendarPage extends StatefulWidget {
  final int userId;

  const CalendarPage({Key? key, required this.userId}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final ApiService _apiService = ApiService();
  DateTime _selectedDate = DateTime.now();
  List<Map<String, dynamic>> _tasksForSelectedDate = [];

  Future<void> _fetchTasksForDate(DateTime date) async {
    final formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";

    try {
      final tasks = await _apiService.fetchTasksForDate(formattedDate, widget.userId);
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
    _fetchTasksForDate(_selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrowWidget(),
              const Center(
                child: Text(
                  "Calendar",
                  style: TextStyle(
                    color: Color.fromARGB(255, 60, 121, 190),
                    fontSize: 70,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Nunito',
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
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
              CalendarWidget(
                onDateSelected: (selectedDate) {
                  setState(() {
                    _selectedDate = selectedDate;
                  });
                  _fetchTasksForDate(selectedDate);
                },
                selectedDate: _selectedDate,
              ),
              const SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: CurrentDayTask(tasks: _tasksForSelectedDate),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(userId: widget.userId),
    );
  }

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
