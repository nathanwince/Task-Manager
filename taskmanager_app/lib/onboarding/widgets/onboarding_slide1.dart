import 'package:flutter/material.dart';

class OnboardingSlide01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 58,
          height: 14,
          child: Stack(
            children: [
              Positioned(
                left: 48,
                top: 2,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0x5960B8E8),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 2,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: ShapeDecoration(
                    color: Color(0x5960B8E8),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: ShapeDecoration(
                    color: Color(0xFF60B8E8),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}