import 'package:flutter/material.dart';
import 'onboarding/splashpage.dart'; // Import the SplashPage

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
      ),
      home: SplashPage(),  // Set SplashPage as the home screen
    );
  }
}
