import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 431,
      height: 71,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 431,
              height: 71,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(width: 431, height: 2),
                  ),
                  Positioned(
                    left: 0,
                    top: 2,
                    child: Container(
                      width: 430,
                      height: 69,
                      decoration: BoxDecoration(color: Color(0xFF2B3166)),
                    ),
                  ),
                  // Add navigation items here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}