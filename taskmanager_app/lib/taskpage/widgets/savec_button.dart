import 'package:flutter/material.dart';

class SaveChangesButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 77,
      decoration: ShapeDecoration(
        color: Color(0xFF58CC02),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF2B6C2B)),
          borderRadius: BorderRadius.circular(30),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x6658CC02),
            blurRadius: 0,
            offset: Offset(4, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x9958CC02),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Save changes',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontFamily: 'Baloo',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}