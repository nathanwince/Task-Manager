import 'package:flutter/material.dart';
import '/services/api_services.dart';

class MotivationTip extends StatefulWidget {
  @override
  _MotivationTipState createState() => _MotivationTipState();
}

class _MotivationTipState extends State<MotivationTip> {
  final ApiService apiService = ApiService();
  String quoteText = "Dedication makes dreams come true.";
  String quoteAuthor = "Nate";

  bool isFavorite = false; // Track favorite state

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            'Tip of the Day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              letterSpacing: 0.30,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFF1CB0F6),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: Color(0xFF10609E)),
              boxShadow: [
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
                // Quote text and author
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          quoteText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.30,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "- $quoteAuthor",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Heart Icon
                IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite; // Toggle favorite state
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border, // Toggle between filled and outlined heart
                    color: isFavorite ? Colors.red : Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
