import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  final List<String> tips; // Accept a list of tips dynamically

  const Tips({
    Key? key,
    this.tips = const [
      'Dedication makes dreams come true.',
      'Make working toward your goal a habit.',
      'Set small goals to build momentum.',
      'Reward yourself for the little wins.'
    ], // Default static tips
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 32, // Full width with padding
      padding: const EdgeInsets.all(16.0), // Inner padding
      decoration: BoxDecoration(
        color: const Color(0xFFE2F2FF),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(width: 1, color: const Color(0xFF6C7EA0)),
        boxShadow: [
          const BoxShadow(
            color: Color(0x66E2F2FF),
            blurRadius: 0,
            offset: Offset(4, 4),
            spreadRadius: 0,
          ),
          const BoxShadow(
            color: Color(0x99E2F2FF),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center align content
        children: List.generate(tips.length, (index) {
          return Padding(
            padding: EdgeInsets.only(bottom: index == tips.length - 1 ? 0 : 16.0), // Add space between tips
            child: Text(
              tips[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF5E5B5B),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.30,
              ),
            ),
          );
        }),
      ),
    );
  }
}
