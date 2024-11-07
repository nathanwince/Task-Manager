import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Roll Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding1': (context) => Onboarding1(),
        '/onboarding2': (context) => Onboarding2(),
        '/onboarding3': (context) => Onboarding3(),
        '/home': (context) => HomePage(),
        '/calendar': (context) => CalendarPage(),
        '/bookmarks': (context) => BookmarksPage(),
        '/addtask': (context) => AddTaskPage(),
        '/dailymotivation': (context) => DailyMotivationPage(),  
        '/notes': (context) => NotesPage(), 
        '/weeklysummary': (context) => WeeklySummaryPage(),
        '/todaystask': (context) => TodaysTaskPage(), 
      },
    );
  }
}