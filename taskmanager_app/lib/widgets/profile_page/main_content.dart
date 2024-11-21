import 'package:flutter/material.dart';

class MainContent extends StatelessWidget {
  final String accountCreated; // Dynamic account creation date
  final int tasksCompleted; // Dynamic count of tasks completed
  final int longestStreak; // Dynamic longest streak

  const MainContent({
    Key? key,
    required this.accountCreated,
    required this.tasksCompleted,
    required this.longestStreak,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFFE2F2FF),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: const Color(0xFF6C7EA0), width: 1),
          boxShadow: const [
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
        child: Column(
          children: [
            _buildStatItem(
              imagePath: "assets/images/crown.png",
              title: 'Account Created',
              subtitle: 'Joined $accountCreated',
            ),
            const Divider(color: Color(0xFF94BDD9), thickness: 1.5),

            _buildStatItem(
              imagePath: "assets/images/taskscompleted.png",
              title: 'Task Completed',
              subtitle: '$tasksCompleted Tasks',
            ),
            const Divider(color: Color(0xFF94BDD9), thickness: 1.5),

            _buildStatItem(
              imagePath: "assets/images/fire.png",
              title: 'Longest Streak',
              subtitle: '$longestStreak Days',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Container(
              width: 80,
              height: 80,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF1CB0F6),
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xFF9D9D9D),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
