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
                '/calendar': (context) => CalendarPage(),
                '/bookmarks': (context) => BookmarksPage(),
                '/addtask': (context) => AddTaskPage(),
                '/dailymotivation': (context) => DailyMotivationPage(),
                '/notes': (context) => NotesPage(),
                '/weeklysummary': (context) => WeeklySummaryPage(),
              },
              onGenerateRoute: (settings) {
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
                return null; // Default to null if no matching route is found
              },
            ),
          ),
        );
      },
    );
  }
}
