import 'package:flutter/material.dart';

class SecondCheckout extends StatelessWidget {
  final int userId;

  const SecondCheckout({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 120.0, // Fixed height for cards
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: [
            _buildCheckoutCard(
              title: 'View\nCalendar',
              color: const Color(0xFF2AACC0),
              imagePath: "assets/images/calendar_icon1.png",
              onTap: () {
                Navigator.pushNamed(context, '/calendar');
              },
            ),
            _buildCheckoutCard(
              title: 'Today’s\nTasks',
              color: const Color(0xFF49B160),
              imagePath: "assets/images/notebook_icon.png",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/todaystask',
                  arguments: userId,
                );
              },
            ),
          ],
        ),
      ),
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
        width: 190.0, // Standardized card width for all cards
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