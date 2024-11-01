import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;

  BackArrowWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.pushNamed(context, '/home'), // Navigate to Home Page
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 28.0,
        ),
      ),
    );
  }
}