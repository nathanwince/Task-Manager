import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  final VoidCallback onPressed;

  EditProfileButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity, // Adjust button width to fit within padding
          height: 56, // Button height
          decoration: BoxDecoration(
            color: Color(0xFF545A93), // Button background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: Color(0xFF152257), // Border color
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x66545A94), // Shadow color
                blurRadius: 4,
                offset: Offset(4, 4),
              ),
              BoxShadow(
                color: Color(0x99545A94), // Shadow color
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center content
            children: [
              Text(
                'Save Changes',
                style: TextStyle(
                  color: Color(0xFFE2F2FF), // Text color
                  fontSize: 18, // Font size
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 8), // Space between text and icon
              Icon(
                Icons.check, // Edit icon
                color: Color(0xFFE2F2FF), // Icon color
                size: 24, // Icon size
              ),
            ],
          ),
        ),
      ),
    );
  }
}
