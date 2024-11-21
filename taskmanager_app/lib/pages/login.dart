import 'package:flutter/material.dart';
import '../services/api_services.dart';
import 'homepage.dart';
import '../widgets/login_page/email_content.dart';
import '../widgets/login_page/password_content.dart';
import '../widgets/login_page/login_button.dart';

class LoginPage extends StatelessWidget {
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
                // Email Input
                EmailContent(controller: emailController),
                const SizedBox(height: 20),
                // Password Input
                PasswordContent(controller: passwordController),
                const SizedBox(height: 40),
                // Login Button
                LoginButton(
                  onPressed: () async {
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();

                    try {
                      final success = await apiService.loginUser(email, password);

                      if (success) {
                        final userId = await apiService.storage.read(key: 'userId');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(userId: int.parse(userId!)),
                          ),
                        );
                      } else {
                        _showErrorDialog(context, "Invalid credentials.");
                      }
                    } catch (e) {
                      _showErrorDialog(context, "Something went wrong.");
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

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Login Failed'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}