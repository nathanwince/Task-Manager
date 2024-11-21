import 'package:flutter/material.dart';
import '../widgets/add_task/header.dart';
import '../widgets/add_task/select_time.dart';
import '../widgets/add_task/priority.dart';
import '../widgets/add_task/note.dart';
import '../widgets/add_task/save_button.dart';
import '../shared/navbar.dart';
import '../services/api_services.dart';

class AddTaskPage extends StatefulWidget {
  final int userId;

  const AddTaskPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String _priority = 'Low'; // Default priority
  String _title = '';
  String _description = '';

  void _updateDate(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  void _updateTime(TimeOfDay? time) {
    setState(() {
      _selectedTime = time;
    });
  }

  void _updatePriority(String priority) {
    setState(() {
      _priority = priority;
    });
  }

  void _updateTitle(String title) {
    setState(() {
      _title = title;
    });
  }

  void _updateDescription(String description) {
    setState(() {
      _description = description;
    });
  }

Future<void> _saveTask(BuildContext context) async {
  if (_selectedDate == null || _selectedTime == null || _title.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Please fill in all required fields.')),
    );
    return;
  }

  final dueDate = DateTime(
    _selectedDate!.year,
    _selectedDate!.month,
    _selectedDate!.day,
    _selectedTime!.hour,
    _selectedTime!.minute,
  );

  int priorityValue = (_priority == 'High')
      ? 1
      : (_priority == 'Medium')
          ? 2
          : 3;

  final taskData = {
    "user_id": widget.userId, // Include user_id here
    "title": _title,
    "description": _description,
    "due_date": dueDate.toIso8601String(),
    "priority": priorityValue,
  };

  try {
    final response = await ApiService().createTask(taskData);
    if (response['success'] == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Task added successfully!')),
      );
      Navigator.pop(context, true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error adding task: ${response['message']}')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('An error occurred while adding the task.')),
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF03174C),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Header(onDateSelected: _updateDate),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SelectTime(onTimeSelected: _updateTime),
                    const SizedBox(height: 16.0),
                    Priority(onPrioritySelected: (int priorityIndex) {
                      _updatePriority(priorityIndex == 1
                          ? 'High'
                          : priorityIndex == 2
                              ? 'Medium'
                              : 'Low');
                    }),
                    const SizedBox(height: 16.0),
                    Note(
                      onTitleChanged: _updateTitle,
                      onDescriptionChanged: _updateDescription,
                    ),
                    const SizedBox(height: 16.0),
                    SaveButton(
                      onSave: () => _saveTask(context),
                      userId: widget.userId,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Navbar(userId: widget.userId),
    );
  }
}
