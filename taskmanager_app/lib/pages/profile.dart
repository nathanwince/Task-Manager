import 'package:flutter/material.dart';
import '../shared/backarrow_button.dart';
import '../shared/navbar.dart';
import '../widgets/profile_page/header_content.dart'; 
import '../widgets/profile_page/main_content.dart'; 
import '../widgets/profile_page/editandlogout_button.dart';
import '../services/api_services.dart'; // Import your API service

const Color kBackgroundColor = Color(0xFF03174C);

class ProfilePage extends StatefulWidget {
  final int userId; // Accept the user ID dynamically

  const ProfilePage({Key? key, required this.userId}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ApiService _apiService = ApiService(); // Instance of your API service
  bool _isLoading = true; // State for loading
  Map<String, dynamic> _profileData = {}; // Store the fetched profile data

  @override
  void initState() {
    super.initState();
    _fetchProfileData(); // Fetch profile data on initialization
  }

  Future<void> _fetchProfileData() async {
    try {
      final profileData = await _apiService.fetchUserProfile(widget.userId); // Fetch profile data
      setState(() {
        _profileData = profileData;
        _isLoading = false; // Data loaded
      });
    } catch (e) {
      print("Error fetching profile data: $e");
      setState(() {
        _isLoading = false; // Stop loading even on error
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: Colors.orange), // Show loading indicator
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BackArrowWidget(),

                  const SizedBox(height: 20),

                  // Header Content (Pass dynamic name)
                  HeaderContent(
                    name: _profileData["name"] ?? "User", // Fallback to "User" if no name
                  ),

                  const SizedBox(height: 20),

                  // Main Content (Pass dynamic stats)
                  MainContent(
                    accountCreated: _profileData["account_created"] ?? "N/A", // Fallback if no data
                    tasksCompleted: _profileData["tasks_completed"] ?? 0, // Fallback to 0
                    longestStreak: _profileData["longest_streak"] ?? 0, // Fallback to 0
                  ),

                  const SizedBox(height: 26),

                  // Profile Actions (Edit Profile & Logout Buttons)
                  ProfileActions(
                    onEditProfilePressed: () {
                      Navigator.pushNamed(context, '/editprofile'); // Navigate to Edit Profile Page
                    },
                    onLogoutPressed: () {
                      Navigator.pushNamed(context, '/login'); // Navigate to Login Page
                    },
                  ),
                ],
              ),
            ),
      bottomNavigationBar: Navbar(userId: widget.userId), // Pass userId to Navbar
    );
  }
}
