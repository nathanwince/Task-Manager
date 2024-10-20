import 'package:flutter/material.dart';


class RollcallTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Roll Call',
          style: TextStyle(
            color: Colors.white,
            fontSize: 54,
            fontFamily: 'Knewave',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
    );
  }
}