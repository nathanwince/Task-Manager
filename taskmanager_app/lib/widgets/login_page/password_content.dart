import 'package:flutter/material.dart';

class PasswordContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align the label to the left
        children: [
          // Label for the password field
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: Text(
              'Password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Password input field container
          Container(
            width: double.infinity, // Responsive width
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFE2F2FF),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Color(0xFF6C7EA0), // Border color
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x66E2F2FF),
                  blurRadius: 4,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Color(0x99E2F2FF),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextField(
                  obscureText: true, // Hide the input for passwords
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Color(0xFF9D9D9D),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}