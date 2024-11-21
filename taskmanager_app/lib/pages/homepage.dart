import 'package:flutter/material.dart';
import '../shared/navbar.dart';
import '../widgets/home_page/header.dart';
import '../widgets/home_page/date_display.dart';
import '../widgets/home_page/streak_bar_widget.dart';
import '../widgets/home_page/upcoming_task_widget.dart';
import '../widgets/home_page/check_out_grid_widget.dart';

class HomePage extends StatelessWidget {
  final int userId;

  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  "assets/images/vector.png",
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Header(),
                    const SizedBox(height: 16.0),
                    DateDisplay(),
                    const SizedBox(height: 16.0),
                    StreakBarWidget(userId: userId),
                    const SizedBox(height: 24.0),
                    UpcomingTasksWidget(userId: userId),
                    const SizedBox(height: 24.0),
                    CheckOutGridWidget(userId: userId),
                    const SizedBox(height: 30.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}