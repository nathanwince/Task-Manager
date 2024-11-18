import 'package:flutter/material.dart';

class SlideIndicator extends StatelessWidget {
  final int currentIndex;
  final int totalSlides;

  SlideIndicator({required this.currentIndex, required this.totalSlides});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalSlides, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.0),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Color(0x5960B8E8),
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}