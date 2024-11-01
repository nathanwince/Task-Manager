import 'package:flutter/material.dart';

class BackgroundMisc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-2.50),
          child: Container(
            width: 497.96,
            height: 292.82,
            child: Stack(),
          ),
        ),
      ],
    );
  }
}