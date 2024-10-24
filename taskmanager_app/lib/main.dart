import 'package:flutter/material.dart';
import 'onboarding/splashpage.dart';  // Import the SplashPage
import 'onboarding/onboarding_1.dart';  // Import the first Onboarding page
import 'onboarding/onboarding_2.dart';  // Import the second Onboarding page
import 'onboarding/onboarding_3.dart';  // Import the third Onboarding page 
import 'homepage/homepage.dart';        // Import Homepage
import 'calendar/calendar.dart';   // Import CalendarPage
import 'taskpage/taskpage.dart'; //Import TaskPage
import 'motivation/dailymotivation.dart'; //Import DailyMotivation Page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Hides the debug banner
      title: 'Roll Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',  // Set global font for the app
      ),
      initialRoute: '/',  // Define the initial route
      routes: {
        '/': (context) => SplashPage(),  // Set SplashPage as the home screen
        '/onboarding1': (context) => Onboarding01(),  // First onboarding screen
        '/onboarding2': (context) => Onboarding02(),  // Second onboarding screen
        '/onboarding3': (context) => Onboarding03(),  // Third onboarding screen 
        '/home': (context) => HomePage(),             // Homepage
        '/calendar': (context) => CalendarPage(),     // Calendar Page
        '/taskpage': (context) => TaskPage(),     // Calendar Page
        '/dailymotivation': (context) => DailyMotivation(),     // Daily Motivation Page
      },
    );
  }
}