import 'package:flutter/material.dart';

// Constants for layout and style
const double kCardWidth = 270.0;
const double kCardHeight = 110.0;
const double kIconSize = 70.0;
const double kHorizontalPadding = 16.0;
const double kVerticalPadding = 8.0;
const double kSpaceBetweenTextAndIcon = 20.0;
const TextStyle kCardTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w800,
  height: 1.5,
);
const TextStyle kTitleTextStyle = TextStyle(
  color: Color.fromARGB(255, 24, 219, 86), // Matching the green color
  fontSize: 24,
  fontFamily: 'Nunito',
  fontWeight: FontWeight.w900,
);

class FirstCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildSection(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // "Check Out" title at the top
          Padding(
            padding: const EdgeInsets.only(bottom: kVerticalPadding), // Adjust spacing from above
            child: Text(
              "Check Out",
              style: kTitleTextStyle,
            ),
          ),
          // Scrollable Row with Cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
                    // Define action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build a section with consistent padding
  Widget _buildSection(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: child,
    );
  }

  // Helper method to build each checkout card
  Widget _buildCheckoutCard({
    required String title,
    required Color color,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding / 2),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: kCardWidth,
          height: kCardHeight,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 0,
                offset: const Offset(4, 4),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: color.withOpacity(0.6),
                blurRadius: 4,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: kCardTextStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: kIconSize,
                  height: kIconSize,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}