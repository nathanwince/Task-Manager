import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  final VoidCallback onPressed;

  GetStartedButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 26.0), // Horizontal and bottom padding
      child: InkWell(
        onTap: onPressed,
        child: Container(
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(24), // Rounded corners
          ),
          child: Center(
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}