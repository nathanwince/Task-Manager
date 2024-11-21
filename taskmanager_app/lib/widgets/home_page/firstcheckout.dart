import 'package:flutter/material.dart';

class FirstCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Check Out" title at the top
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Check Out",
            style: TextStyle(
              color: Color.fromARGB(255, 24, 219, 86), // Matching the green color
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        // Scrollable Row with Cards
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 120.0, // Fixed height for cards
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                _buildCheckoutCard(
                  title: 'Daily\nMotivation',
                  color: const Color(0xFF604EB6),
                  imagePath: "assets/images/books_icon.png",
                  onTap: () {
                    Navigator.pushNamed(context, '/dailymotivation');
                  },
                ),
                _buildCheckoutCard(
                  title: 'Weekly\nSummary',
                  color: const Color(0xFFE2AC5F),
                  imagePath: "assets/images/shopping_icon.png",
                  onTap: () {
                    Navigator.pushNamed(context, '/weeklysummary');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCheckoutCard({
    required String title,
    required Color color,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 16.0), // Consistent spacing between cards
        width: 190.0, // Standardized card width
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Internal padding for card content
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                    height: 1.5,
                  ),
                  overflow: TextOverflow.ellipsis, // Handle long text gracefully
                ),
              ),
              SizedBox(
                width: 50.0,
                height: 50.0, // Standardized image size
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}