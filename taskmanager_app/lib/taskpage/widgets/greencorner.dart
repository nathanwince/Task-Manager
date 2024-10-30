import 'package:flutter/material.dart';

class CornerG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..rotateZ(-2.50),
      child: Container(
        width: 497.96,
        height: 292.82,
        child: Stack(
          children: [
            // You can add your Stack content here if needed
          ],
        ),
      ),
    );
  }
}