import 'package:flutter/material.dart';

class NextButton01 extends StatelessWidget {
  // The constructor can accept a function that will be called when the button is pressed
  final VoidCallback onPressed;

  // Constructor to allow passing a function for button press
  NextButton01({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(  // Use GestureDetector to detect taps
      onTap: onPressed,     // Call the provided function when tapped
      child: Column(
        children: [
          Container(
            width: 358,
            height: 77,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x66FFFFFF),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x99FFFFFF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 358,
                    height: 77,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24), // Rounded corners
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 139.50,
                  top: 17,
                  child: SizedBox(
                    width: 79,
                    height: 33,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w900,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
