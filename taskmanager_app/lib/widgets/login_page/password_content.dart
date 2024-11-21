import 'package:flutter/material.dart';

class PasswordContent extends StatelessWidget {
  final TextEditingController controller;

  const PasswordContent({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
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
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFE2F2FF),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: const Color(0xFF6C7EA0), width: 1),
          ),
          child: TextField(
            controller: controller,
            obscureText: true,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Nunito',
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter your password',
              hintStyle: TextStyle(
                color: Color(0xFF9D9D9D),
                fontSize: 16,
                fontFamily: 'Nunito',
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}