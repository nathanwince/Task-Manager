import 'package:flutter/material.dart';
import 'widgets/backarrow_button.dart';
import 'widgets/bookmark_tasks.dart';
import 'widgets/navbar.dart';
import 'widgets/tips.dart';

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF03174C), // Match background color with theme
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
        children: [
          // Back Arrow Button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: BackArrowWidget(), // Custom widget for back navigation
          ),

          // Centered Bookmarks Text
          Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0), // Add space between the arrow and text
              child: Text(
                "Bookmarks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36, // Increase font size
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
            ),
          ),

          // Tips Section Title with Heart Icon
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjust padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tips",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nunito',
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/heart.png"), // Replace with your heart icon path
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Tips Section aligned left
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Tips(), // Your custom widget for Tips
          ),

          // Padding above the Tasks section
          Padding(
            padding: EdgeInsets.only(top: 60.0), // Reduce space
          ),

          // Task List Section Title with Heart Icon
          Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 4.0), // Adjust padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/heart.png"), // Replace with your heart icon path
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Reduced Space Between the Text and Task Buttons
          SizedBox(height: 8.0), // Adjust this to control the spacing

          // Task Buttons aligned left
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0), // Align left
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BookmarkTasks(), // Reusing your task widget for horizontal scrolling
                    SizedBox(width: 8.0), // Padding between tasks if needed
                  ],
                ),
              ),
            ),
          ),

          // Navbar at the bottom
          Navbar(),
        ],
      ),
    );
  }
}