import 'package:flutter/material.dart';

class MainContent extends StatefulWidget {
  @override
  _EditProfileFormState createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<MainContent> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding added here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name Field
          _buildInputField(
            label: 'Name',
            initialValue: 'Matthew McKenry',
            icon: Icons.person,
          ),
          const SizedBox(height: 20),

          // Email Field
          _buildInputField(
            label: 'Email',
            initialValue: 'mattkenry@gmail.com',
            icon: Icons.email,
          ),
          const SizedBox(height: 20),

          // Phone Number Field
          _buildInputField(
            label: 'Phone Number',
            initialValue: '910-567-8921',
            icon: Icons.phone,
          ),
          const SizedBox(height: 20),

          // Password Field with Visibility Toggle
          _buildPasswordField(initialPassword: 'mypassword312'),
        ],
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String initialValue,
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
                child: Icon(icon, color: Colors.black),
              ),
              Expanded(
                child: TextField(
                  controller: TextEditingController(text: initialValue),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField({required String initialPassword}) {
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
                child: Icon(Icons.fingerprint, color: Colors.black),
              ),
              Expanded(
                child: TextField(
                  obscureText: !_isPasswordVisible,
                  enabled: _isPasswordVisible, // Make editable only if visible
                  controller: TextEditingController(text: initialPassword),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
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