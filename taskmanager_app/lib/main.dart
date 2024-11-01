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
        '/onboarding1': (context) => Onboarding01(),
        '/onboarding2': (context) => Onboarding02(),
        '/onboarding3': (context) => Onboarding03(),
        '/home': (context) => HomePage(),
        '/calendar': (context) => CalendarPage(),
        '/bookmarks': (context) => BookmarksPage(),
        '/addtask': (context) => AddTaskPage(),
        '/dailymotivation': (context) => DailyMotivationPage(),  // Add the Daily Motivation route
      },
    );
  }
}