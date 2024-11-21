import 'package:flutter/material.dart';

class BookmarkTasks extends StatelessWidget {
  final int userId; // Add userId parameter
  final List<Map<String, dynamic>> bookmarks; // Add bookmarks parameter

  const BookmarkTasks({Key? key, required this.userId, required this.bookmarks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: bookmarks.map((bookmark) {
        return Container(
          width: 235,
          height: 140,
          margin: const EdgeInsets.only(left: 12, right: 12), // Adjusted margin for consistent spacing
          decoration: ShapeDecoration(
            color: Color(0xFFCE4E50), // Customize color based on priority
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 16,
                child: Text(
                  bookmark['title'] ?? 'No Title',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: Text(
                  bookmark['time'] ?? 'No Time',
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
