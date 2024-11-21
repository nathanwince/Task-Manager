import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
        children: [
          // "Edit Profile" Text
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0), // Spacing below the text
            child: Text(
              'Edit Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36, // Font size for the header
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center, // Center-align the text
            ),
          ),

          // Profile Picture with Edit Button
          Stack(
            alignment: Alignment.center, // Align elements on top of each other
            children: [
              // Profile Picture with Opacity
              Opacity(
                opacity: 0.6, // Set the transparency to 60%
                child: Container(
                  width: 120, // Width of the circular container
                  height: 120, // Height of the circular container
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Makes it circular
                    color: Colors.white.withOpacity(0.8), // Slightly transparent
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Slight shadow
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_pic.png'), // Placeholder image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              // Edit Button Overlay
              Positioned(
                bottom: 4, // Position the button at the bottom of the picture
                right: 8, // Offset slightly from the edge
                child: GestureDetector(
                  onTap: () {
                    // Action to select a new profile picture
                    print('Edit profile picture tapped');
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color
                      shape: BoxShape.circle, // Circular button
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Shadow for button
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.edit, // Edit icon
                      size: 20,
                      color: Color(0xFF03174C), // Icon color
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}