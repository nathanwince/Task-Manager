import 'package:flutter/material.dart';

class LowPriority extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  final String priority;

  LowPriority({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.priority,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 140,
      decoration: BoxDecoration(
        color: Color(0xFFA6D861),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 8,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Divider(
              thickness: 0.5,
              color: Color(0x33252525),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      date,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF7ECD54),
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
          ],
        ),
      ),
    );
  }
}