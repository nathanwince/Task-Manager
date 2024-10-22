import 'package:flutter/material.dart';


class RollcallLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 364,
          height: 364,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/rollcall_logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}