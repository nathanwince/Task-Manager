import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name Field
          _buildInputField(
            label: 'Name',
            hintText: 'Enter your name',
            icon: Icons.person,
          ),
          const SizedBox(height: 20),

          // Email Field
          _buildInputField(
            label: 'Email',
            hintText: 'Enter your email',
            icon: Icons.email,
          ),
          const SizedBox(height: 20),

          // Phone Number Field
          _buildInputField(
            label: 'Phone Number',
            hintText: 'Enter your phone number',
            icon: Icons.phone,
          ),
          const SizedBox(height: 20),

          // Password Field with Visibility Toggle
          _buildPasswordField(),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String hintText,
    required IconData icon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // Input Field with Icon
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFE2F2FF),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Color(0xFF6C7EA0),
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(icon, color: Colors.black), // Changed to black
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color(0xFF9D9D9D),
                      fontSize: 16,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
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
        // Password Field with Toggle
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Color(0xFFE2F2FF),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Color(0xFF6C7EA0),
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
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(Icons.fingerprint, color: Colors.black), // Changed to black
              ),
              Expanded(
                child: TextField(
                  obscureText: !_isPasswordVisible,
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
              IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black, // Changed to black
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}