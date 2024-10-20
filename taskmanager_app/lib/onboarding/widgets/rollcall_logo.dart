import 'package:flutter/material.dart';


class RollcallLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 342.50,
          height: 219.68,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/rollcall_logo.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}