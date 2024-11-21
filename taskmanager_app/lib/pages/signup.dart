import 'package:flutter/material.dart';
import '../services/api_services.dart';
import 'login.dart';
import '../widgets/signup_page/createprofile_button.dart';
import '../widgets/signup_page/header_content.dart';
import '../widgets/signup_page/main_content.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                // Header Content (Sign Up Text + Optional Profile Picture Placeholder)
                 SignUpHeader(),
                const SizedBox(height: 40),
                // Main Content (Input Fields)
                SignUpForm(),
                const SizedBox(height: 80),
                // Create Profile Button
                CreateProfileButton(
                  onPressed: () async {
                    final name = nameController.text.trim();
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();

                    final success = await apiService.signUpUser(name, email, password);

                    if (success) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Sign Up Failed'),
                          content: const Text('Something went wrong. Please try again.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}