import 'package:flutter/material.dart';

class View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 67,
          height: 12,
          child: Text(
            'View ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w800,
              height: 0.05,
              letterSpacing: 0.30,
            ),
          ),
        ),
      ],
    );
  }
}