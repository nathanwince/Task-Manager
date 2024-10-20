import 'package:flutter/material.dart';
import 'widgets/getstarted_button.dart';
import 'widgets/rollcall_logo.dart';
import 'widgets/rollcall_title.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(  // Center the container on the screen
        child: Container(
          width: 430,  // Set width to match Figma design
          height: 932, // Set height to match Figma design
          decoration: BoxDecoration(
            color: Color(0xFF03174C),  // Set the background color here
          ),
          child: Stack(
            children: [
              // Title
              Positioned(
                left: 115,
                top: 196,
                child: RollcallTitle(),  // Title widget
              ),
              // Logo
              Positioned(
                left: 51.50,
                top: 360,
                child: RollcallLogo(),  // Logo widget
              ),
              // Get Started Button
              Positioned(
                left: 36,
                top: 816,
                child: GetStartedButton(),  // GetStartedButton widget
              ),
            ],
          ),
        ),
      ),
    );
  }
}
