import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  final String name; // User's name

  const HeaderContent({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Title
        Text(
          'Profile',
          style: TextStyle(
            color: Color(0xFF00BFFF),
            fontSize: 60,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 16),

        // Static Default Profile Picture
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile_pic.png'), // Static default picture
          backgroundColor: Colors.white,
        ),
        const SizedBox(height: 16),

        // User Name
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
