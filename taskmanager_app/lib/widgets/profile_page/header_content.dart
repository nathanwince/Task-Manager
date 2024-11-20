import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  final String name; // User's name
  final String profilePicture; // URL or asset path for the profile picture

  const HeaderContent({
    Key? key,
    required this.name,
    required this.profilePicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
      children: [
        // "Profile" Text
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0), // Spacing below the header text
          child: Text(
            'Profile',
            style: TextStyle(
              color: Color(0xFF00BFFF), // Bright blue color for the header
              fontSize: 60, // Font size for emphasis
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),

        // Profile Picture
        Center(
          child: Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white, // Background color for the profile picture
              shape: BoxShape.circle, // Circular container
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // Subtle shadow for depth
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
              image: DecorationImage(
                image: profilePicture.isNotEmpty
                    ? NetworkImage(profilePicture) // Use the provided profile picture URL
                    : AssetImage('assets/images/profile_pic.png') // Default picture if none provided
                        as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        const SizedBox(height: 16), // Space between the profile picture and name

        // Name Text
        Text(
          name, // Replace with dynamic or user-specific data
          style: TextStyle(
            color: Colors.white, // White text to contrast with the background
            fontSize: 26, // Adjust font size for readability
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900, // Bold weight for emphasis
          ),
          textAlign: TextAlign.center, // Ensure name text is centered
        ),
      ],
    );
  }
}
