import 'package:flutter/material.dart';

class CurrentTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding
      child: Column(
        children: [
          TaskCard(
            color: Color(0xFFD76163),
            title: 'Video Recording',
            priority: 'High',
            time: '09:30 AM',
            date: '10 October 2024',
            description:
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Cursus per nullam aptent lectus hendrerit quisque est. Dictumst lectus nec malesuada convallis suscipit.',
          ),
          SizedBox(height: 20), // Space between task cards
          TaskCard(
            color: Color(0xFFF0C370),
            title: 'Homework Assignment',
            priority: 'Medium',
            time: '01:30 PM',
            date: '12 October 2024',
            description:
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Cursus per nullam aptent lectus hendrerit quisque est. Dictumst lectus nec malesuada convallis suscipit.',
          ),
          SizedBox(height: 20),
          TaskCard(
            color: Color(0xFFA6D861),
            title: 'Meeting with TAs',
            priority: 'Low',
            time: '09:30 PM',
            date: '19 October 2024',
            description:
                'Lorem ipsum odor amet, consectetuer adipiscing elit. Cursus per nullam aptent lectus hendrerit quisque est. Dictumst lectus nec malesuada convallis suscipit.',
          ),
        ],
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
  final Color color;
  final String title;
  final String priority;
  final String time;
  final String date;
  final String description;

  const TaskCard({
    required this.color,
    required this.title,
    required this.priority,
    required this.time,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 4,
            offset: Offset(4, 4),
          ),
          BoxShadow(
            color: color.withOpacity(0.6),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Priority Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  priority,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          // Description Text
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          // Time and Date Row
          Row(
            children: [
              // Time Section
              Row(
                children: [
                  Icon(Icons.access_time, size: 16, color: Colors.black.withOpacity(0.6)),
                  SizedBox(width: 8),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Spacer(),
              // Date Section
              Row(
                children: [
                  Icon(Icons.calendar_today, size: 16, color: Colors.black.withOpacity(0.6)),
                  SizedBox(width: 8),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}