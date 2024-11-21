import 'package:flutter/material.dart';
import 'package:taskmanager_app/pages/login.dart';
import 'package:taskmanager_app/pages/signup.dart';
import 'package:taskmanager_app/pages/splashpage.dart';
import 'package:taskmanager_app/pages/onboarding_1.dart';
import 'package:taskmanager_app/pages/onboarding_2.dart';
import 'package:taskmanager_app/pages/onboarding_3.dart';
import 'package:taskmanager_app/pages/homepage.dart';
import 'package:taskmanager_app/pages/calendar.dart';
import 'package:taskmanager_app/pages/bookmarks.dart';
import 'package:taskmanager_app/pages/addtask.dart';
import 'package:taskmanager_app/pages/dailymotivation.dart';
import 'package:taskmanager_app/pages/notes.dart';
import 'package:taskmanager_app/pages/weekly_summary.dart';
import 'package:taskmanager_app/pages/todays_task.dart';
import 'package:taskmanager_app/pages/profile.dart'; // Import the profile page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 430,
              maxHeight: 932,
            ),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Roll Call App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily: 'Nunito',
              ),
              initialRoute: '/login',
              routes: {
                '/login': (context) => LoginPage(),
                '/signup': (context) => SignUpPage(),
                '/splash': (context) => SplashPage(),
                '/onboarding1': (context) => Onboarding1(),
                '/onboarding2': (context) => Onboarding2(),
                '/onboarding3': (context) => Onboarding3(),
              },
              onGenerateRoute: (settings) {
                // Handle routes that require arguments
                if (settings.name == '/home') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => HomePage(userId: userId),
                  );
                }
                if (settings.name == '/todaystask') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => TodaysTaskPage(userId: userId),
                  );
                }
                if (settings.name == '/profile') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => ProfilePage(userId: userId),
                  );
                }
                if (settings.name == '/calendar') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => CalendarPage(userId: userId),
                  );
                }
                if (settings.name == '/bookmarks') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => BookmarksPage(userId: userId),
                  );
                }
                if (settings.name == '/addtask') {
                  final userId = settings.arguments as int;
                  // return MaterialPageRoute(
                  //   builder: (context) => AddTaskPage(userId: userId),
                  // );
                }
                if (settings.name == '/dailymotivation') {
                  final userId = settings.arguments as int;
                  return MaterialPageRoute(
                    builder: (context) => DailyMotivationPage(userId: userId),
                  );
                }
                if (settings.name == '/weeklysummary') {
                  return MaterialPageRoute(
                    builder: (context) => WeeklySummaryPage(),
                  );
                }
                if (settings.name == '/notes') {
                  return MaterialPageRoute(
                    builder: (context) => NotesPage(),
                  );
                }
                return null; // Default to null if no matching route is found
              },
            ),
          ),
        );
      },
    );
  }
}
