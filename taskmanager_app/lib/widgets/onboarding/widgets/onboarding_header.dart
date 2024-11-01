import 'package:flutter/material.dart';

class RollCallHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 114,
          height: 28,
          child: Stack(
            children: [
              // Positioned Text for "Roll Call"
              Positioned(
                left: 44,
                top: 3,
                child: SizedBox(
                  width: 70,
                  height: 21,
                  child: Text(
                    'Roll Call',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              // Positioned Container for the logo
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 44,
                  height: 28,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rollcall_logo.png"),
                      fit: BoxFit.contain, // Maintain aspect ratio
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
