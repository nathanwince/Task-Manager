import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function(String name, String email, String password) onSignUp;

  const SignUpForm({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.onSignUp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name Field
        _buildInputField(
          controller: nameController,
          hintText: 'Name',
          icon: Icons.person,
        ),
        const SizedBox(height: 20),

        // Email Field
        _buildInputField(
          controller: emailController,
          hintText: 'Email',
          icon: Icons.email,
        ),
        const SizedBox(height: 20),

        // Password Field
        _buildPasswordField(
          controller: passwordController,
          hintText: 'Password',
        ),
        const SizedBox(height: 40),

        // Sign-Up Button
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFA500),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            onPressed: () {
              final name = nameController.text.trim();
              final email = emailController.text.trim();
              final password = passwordController.text.trim();
              onSignUp(name, email, password);
            },
            child: const Text(
              'Create Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Input and Password Field Builders
  Widget _buildInputField({required TextEditingController controller, required String hintText, required IconData icon}) {
    return TextField(
      controller: controller,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon, color: Colors.black),
        filled: true,
        fillColor: const Color(0xFFE2F2FF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildPasswordField({required TextEditingController controller, required String hintText}) {
    return TextField(
      controller: controller,
      obscureText: true,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.lock, color: Colors.black),
        filled: true,
        fillColor: const Color(0xFFE2F2FF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
