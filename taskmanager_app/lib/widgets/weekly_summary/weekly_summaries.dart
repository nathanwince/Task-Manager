import 'package:flutter/material.dart';

class WeeklySummary extends StatelessWidget {
  final List<Map<String, dynamic>> weekData = [
    {'day': 'Mo', 'date': '3', 'tasks': '2', 'color': Color(0xFF49B160)},
    {'day': 'Tu', 'date': '4', 'tasks': '4', 'color': Color(0xFF8472FF)},
    {'day': 'We', 'date': '5', 'tasks': '8', 'color': Color(0xFFFFB100)},
    {'day': 'Th', 'date': '6', 'tasks': '0', 'color': Color(0xFF2AACC0)},
    {'day': 'Fr', 'date': '7', 'tasks': '5', 'color': Color(0xFFFF7878)},
    {'day': 'Sa', 'date': '8', 'tasks': '1', 'color': Color(0xFFDADD33)},
    {'day': 'Su', 'date': '9', 'tasks': '7', 'color': Color(0xFFDF73E5)},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 16.0),
          child: Text(
            'Weekly Summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: weekData.map((data) {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0), // Adjust the spacing between items
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  decoration: BoxDecoration(
                    color: data['color'],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: data['color'].withOpacity(0.4),
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data['day'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        data['date'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        data['tasks'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Nunito',
                        ),
                      ),
                      Text(
                        'Tasks Complete',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        // Add a SizedBox for additional spacing below the Weekly Summary
        SizedBox(height: 30), // Adjust height as needed for bottom spacing
      ],
    );
  }
}