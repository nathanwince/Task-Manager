import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/bookmarks/bookmark_tasks.dart';
import '../widgets/bookmarks/tips.dart';

class BookmarksPage extends StatelessWidget {
  final int userId;

  const BookmarksPage({Key? key, required this.userId}) : super(key: key);
  
  Future<List<Map<String, dynamic>>> fetchBookmarks(int userId) async {
    // Simulate fetching bookmarks from API
    await Future.delayed(const Duration(seconds: 2));
    return [
      {'title': 'Finish Report', 'time': '2:00 PM'},
      {'title': 'Practice Guitar', 'time': '4:00 PM'},
    ];
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
              padding: const EdgeInsets.only(bottom: 16.0),
              child: const Text(
                "Bookmarks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tips(),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: fetchBookmarks(userId),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(child: Text("Error loading bookmarks"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("No bookmarks found"));
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: BookmarkTasks(userId: userId, bookmarks: snapshot.data!),
                    ),
                  );
                }
              },
            ),
          ),
          Navbar(userId: userId),
        ],
      ),
    );
  }
}
