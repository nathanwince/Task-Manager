import 'package:flutter/material.dart';

class BackArrowWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const BackArrowWidget({this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.pop(context), // Navigate back by default
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
        ),
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 28.0,
        ),
      ),
    );
  }
}