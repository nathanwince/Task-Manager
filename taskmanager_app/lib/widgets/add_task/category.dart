import 'package:flutter/material.dart';

const double kCategoryItemSpacing = 8.0;
const double kLeftPadding = 16.0;
const TextStyle kCategoryTitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'Nunito',
);

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category title label
        Padding(
          padding: const EdgeInsets.only(left: kLeftPadding, bottom: kCategoryItemSpacing),
          child: const Text("Category", style: kCategoryTitleStyle),
        ),

        // Row for category tags with spacing
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kLeftPadding),
          child: Row(
            children: [
              _buildExpandedCategoryItem("Meeting", const Color(0xFFCA903A), const Color(0xFFA26C1C)),
              SizedBox(width: kCategoryItemSpacing),
              _buildExpandedCategoryItem("Hangout", const Color(0xFFBC3DC3), const Color(0xFF943099)),
              SizedBox(width: kCategoryItemSpacing),
              _buildExpandedCategoryItem("Cooking", const Color(0xFFB92424), const Color(0xFF992020)),
              SizedBox(width: kCategoryItemSpacing),
              _buildExpandedCategoryItem("Other", const Color(0xFF786E6E), const Color(0xFF625959)),
              SizedBox(width: kCategoryItemSpacing),
              _buildExpandedCategoryItem("Weekend", const Color(0xFF41C76F), const Color(0xFF3D955B)),
            ],
          ),
        ),

        // Add icon positioned below the category tags
        Padding(
          padding: const EdgeInsets.only(left: kLeftPadding, top: kCategoryItemSpacing),
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF6C7EA0), width: 2),
            ),
            child: const Icon(
              Icons.add,
              color: Color(0xFF6C7EA0),
              size: 16,
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to build each category item with Expanded for equal spacing
  Widget _buildExpandedCategoryItem(String label, Color bgColor, Color dotColor) {
    return Expanded(
      child: Container(
        height: 24,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: dotColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 4), // Space between dot and text
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 1.2,
                letterSpacing: 0.3,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}