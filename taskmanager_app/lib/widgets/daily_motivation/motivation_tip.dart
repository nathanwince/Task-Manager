import 'package:flutter/material.dart';

class MotivationTip extends StatelessWidget {
  final String quote; // The quote to display
  final VoidCallback onHeartPressed; // Callback for heart icon press

  const MotivationTip({
    Key? key,
    required this.quote,
    required this.onHeartPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40), // Space above the title
          const Text(
            'Tip of the day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.30,
            ),
          ),
          const SizedBox(height: 16), // Space between title and container
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF1CB0F6),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: const Color(0xFF10609E)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x661CB0F6),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x991CB0F6),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      quote,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onHeartPressed,
                  icon: const Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}