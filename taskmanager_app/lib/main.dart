import 'package:flutter/material.dart';
import 'package:taskmanager_app/pages/login.dart';
import 'pages/signup.dart'; // Add the signup page
import 'pages/splashpage.dart';
import 'pages/onboarding_1.dart';
import 'pages/onboarding_2.dart';
import 'pages/onboarding_3.dart';
import 'pages/homepage.dart';
import 'pages/calendar.dart';
import 'pages/bookmarks.dart';
import 'pages/addtask.dart';
import 'pages/dailymotivation.dart';
import 'pages/notes.dart';
import 'pages/weekly_summary.dart';
import 'pages/todays_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Ensure the app dimensions remain fixed to 430x932
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 430, // Set the maximum width to 430px
              maxHeight: 932, // Set the maximum height to 932px
            ),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Roll Call App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'Nunito',
              ),
              initialRoute: '/',
              routes: {
                '/': (context) => LoginPage(), // Default page
                '/signup': (context) => SignUpPage(),
                '/onboarding1': (context) => Onboarding1(),
                '/onboarding2': (context) => Onboarding2(),
                '/onboarding3': (context) => Onboarding3(),
                // Use a dynamic route for pages requiring userId
              },
            ),
          ),
        );
      },
    );
  }
}
